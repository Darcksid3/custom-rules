class GamesController < ApplicationController
  IMAGES_GAME = {
    "monopoly" => "https://cdn.cultura.com/cdn-cgi/image/width=1280/media/pim/23_244147_1_10_FR.jpg",
    "skyjo" => "https://b4049544.smushcdn.com/4049544/wp-content/uploads/2025/03/35084-d19-Skyjo.jpg?lossy=2&strip=1&webp=1",
    "uno" => "https://m.media-amazon.com/images/I/71n61AtC+VL._AC_SL1500_.jpg",
    "scrabble" => "https://cdn.cultura.com/cdn-cgi/image/width=1280/media/pim/77_241905_1_10_FR.jpg"
  }

  def index
    @games = Game.all
    @url_ok = LinkChecker.valid?("https://kitt.lewagon.com/placeholder/users/#{current_user}")
  end

  def show
    @game = Game.find(params[:id])
  end

end
