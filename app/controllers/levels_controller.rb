class LevelsController < ApplicationController
  def show
    @level = Level.find_by(id: params[:id])
  end
end
