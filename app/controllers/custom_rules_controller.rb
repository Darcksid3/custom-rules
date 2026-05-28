class CustomRulesController < ApplicationController
  def create
    message = Message.find(params[:message_id])
    
    CustomRules.create(
      content: message.content,
      conversation: message.conversation,
      game: message.conversation.game,
      name: message.conversation.title,
      theme: "theme",
    )
    # @custom_rules = CustomRule.new(game_id: @game, conversation_id: @conversation, content: @conversation.last_assistant_message.content, name: @conversation.title, theme: "theme")
    
    if @custom_rules.save
      "yess"
    else
      "et mer2"
    end
    raise
  end

  def show
  end
  def index
    @custom_rules = CustomRule.all
  end
end
