class GamesController < ApplicationController
  def index
    @game = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
  end
end
