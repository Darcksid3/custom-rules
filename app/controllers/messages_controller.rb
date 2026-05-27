class MessagesController < ApplicationController

  SYSTEM_PROMPT = ""

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

    # if @message.save
    #   ruby_llm_chat = RubyLLM.conversation
    #   response = ruby_llm_chat.with_instructions(SYSTEM_PROMPT).ask(@message.content)
    #   Message.create(role: "assistant", content: response.content, conversation: @conversation)

    #   redirect_to chat_path(@conversation)
    # else
    #   render "conversations/show", status: :unprocessable_entity
    # end
  end

  private

  def message_params
    params.require(:message).permit(:content, :role)
  end
end
