class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @games = Game.all
    @user = current_user
  end
end
