class MessagesController < ApplicationController

  def show
    # on affiche tout les mesaage de la conversation
  end
  def new
    @message = Message.new
  end

  def create
    # on crée le message et on l'envoie en base de donnée 
  end
end
