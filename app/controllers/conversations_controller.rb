class ConversationsController < ApplicationController
  def new
  end

  def create
    @conversation = Conversation.new(title: "default")
    @conversation.user = current_user
    if @conversation.save
      @conversation.messages.create(role: "assistant", content: "Pour quel jeux souhaitez-vous des règles custom ?")
      redirect_to conversation_path(@conversation)
    else
      render "pages/home"
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

end
