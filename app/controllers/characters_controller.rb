class CharactersController < ApplicationController

  def show
    @character = Character.find(params[:id])
    json_response(@character)
  end

  def create
    cs = Character.find(params[:character_id])
    @character = Character.set_new_char cs
    json_response(@character, :created)
  end

  def update
    @character = Character.find(params[:id])
    if @character.update!(character_params)
      render status: 200, json: {
        message: "Your game system has successfully been updated."
      }
    end
  end

  def destroy
    @character = Character.find(params[:id])
    if @character.destroy
      render status: 200, json: {
        message: "Your game system has been deleted."
      }
    end
  end

private
  def character_params
    params.permit(:character_sheet_id)
  end
end
