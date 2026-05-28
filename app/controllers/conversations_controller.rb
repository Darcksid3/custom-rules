class ConversationsController < ApplicationController
  def new
  end

  def create
    @game = Game.find(params[:game_id])
    @conversation = Conversation.new(title: Conversation::DEFAULT_TITLE)
    @conversation.game = @game
    @conversation.user = current_user
    if @conversation.save
      @conversation.messages.create(role: "assistant", content: "Parfait jouons à #{@game.name}")
      redirect_to conversation_path(@conversation)
    else
      @conversation = @game.conversation.where(user: current_user)
      render "game/show"
    end
  end

  def show
    @conversation = current_user.conversations.find(params[:id])
    @message = Message.new
  end

end
