class MessagesController < ApplicationController

  SYSTEM_PROMPT = "Tu est un expert en comception de règle de jeux de société.\n\n
                   ton but est d'aider l'utilisateur à crée des règles de jeux personalisez.\n\n
                   tu ne doit dans un premier temps utilisez uniquement le matériel déja présent dans le jeux.\n\n
                   en fonction de ces instructions. répond toujours en Markdown."
  def show
    # on affiche tout les mesaage de la conversation
  end
  def new
    @message = Message.new
  end

  def create
    # on crée le message et on l'envoie en base de donnée 
    @conversation = current_user.conversations.find(params[:conversation_id])
    @game = @conversation.game

    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.role = "user"

    if @message.save
      @ruby_llm_chat = RubyLLM.chat
      build_conversation_history
      response = @ruby_llm_chat.with_instructions(instructions).ask(@message.content)
      @assistant_message = @conversation.messages.create(role: "assistant", content: response.content, conversation: @conversation)
      @conversation.generate_title_from_first_message
      # Turbo
      respond_to do |format|
        format.turbo_stream 
        format.html { redirect_to conversation_path(@conversation) }
      end
    else
      # Turbo
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.update("new_message_container", partial: "messages/form", locals: { conversation: @conversation, message: @message }) }
        format.html { render "conversations/show", status: :unprocessable_entity }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def game_context
    "Voici le jeux: #{@game.name}."
  end

  def instructions
    [SYSTEM_PROMPT, game_context].compact.join("\n\n")
  end

  def build_conversation_history
    @conversation.messages.each do |message|
      @ruby_llm_chat.add_message(message)
    end
  end
end
