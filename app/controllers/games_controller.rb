class GamesController < ApplicationController
IMAGES_GAME = {
  "monopoly" => "https://cdn.cultura.com/cdn-cgi/image/width=1280/media/pim/23_244147_1_10_FR.jpg",
  "skyjo" => "https://cdn.cultura.com/cdn-cgi/image/width=1280/media/pim/3017472_1njprxew_1",
  "uno" => "https://m.media-amazon.com/images/I/71n61AtC+VL._AC_SL1500_.jpg",
  "scrabble" => "https://cdn.cultura.com/cdn-cgi/image/width=1280/media/pim/77_241905_1_10_FR.jpg"
}

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
