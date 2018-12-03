class GamesController < ApplicationController
  def show
    @game = Game.find_by(id: params[:id])
    # console
  end
end
