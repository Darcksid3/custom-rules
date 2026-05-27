class CustomRulesController < ApplicationController
  def create
  end

  def show
  end
  def index
    @custom_rules = CustomRule.all
  end
end
