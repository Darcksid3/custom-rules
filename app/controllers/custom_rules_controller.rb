class CustomRulesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation])

    @custom_rules = CustomRule.new(game_id: @conversation.game_id, conversation_id: @conversation.id, content: @conversation.messages.last.content, name: @conversation.title, theme: "theme")

    if @custom_rules.save
      @test = "ok"
      # redirect to profile
      redirect_to profile_path(current_user)
    else
      @test = "et mer2"
      # render "/games/:id"(@conversation.game_id)
    end
  end

  def show
  end
  def index
    @custom_rules = CustomRule.all
  end
end
