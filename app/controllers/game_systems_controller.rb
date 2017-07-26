class GameSystemsController < ApplicationController

  def index
    @game_systems = GameSystem.all
    json_response(@game_systems)
  end

  def show
    @game_system = GameSystem.find(params[:id])
    json_response(@game_system)
  end

  def create
    @game_system = GameSystem.create!(game_system_params)
    json_response(@game_system, :created)
  end

  def update
    @game_system = GameSystem.find(params[:id])
    if @game_system.update!(game_system_params)
      render status: 200, json: {
        message: "Your game system has successfully been updated."
      }
    end
  end

  def destroy
    @game_system = GameSystem.find(params[:id])
    if @game_system.destroy
      render status: 200, json: {
        message: "Your game system has been deleted."
      }
    end
  end

private
  def game_system_params
    params.permit(:name, :publisher, :description)
  end
end
