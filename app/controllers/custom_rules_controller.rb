class CustomRulesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation])

    @custom_rules = CustomRule.new(game_id: @conversation.game_id, conversation_id: @conversation.id, content: @conversation.messages.last.content, name: @conversation.title)

    if @custom_rules.save
      @test = "ok"
      # redirect to profile
      redirect_to custom_rules_path
    else
      @test = "et mer2"
      redirect_to conversations_path(@conversation)
    end
  end

  def show
    @game = Game.find(params[:game_id])
    @custom_rule = @game.custom_rules.find(params[:id])
  end

  def index
    @custom_rules = CustomRule.all
  end
end
