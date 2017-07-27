class CharacterSheetsController < ApplicationController

  def create
    game_system = GameSystem.find(params[:game_system_id])
    @character_sheet = game_system.character_sheets.create!(character_sheet_params)
    json_response(@character_sheet, :created)
  end

  def update
    @character_sheet = CharacterSheet.find(params[:id])
    if @character_sheet.update!(character_sheet_params)
      render status: 200, json: {
        message: "Your game system has successfully been updated."
      }
    end
  end

  def destroy
    @character_sheet = CharacterSheet.find(params[:id])
    if @character_sheet.destroy
      render status: 200, json: {
        message: "Your game system has been deleted."
      }
    end
  end

private
  def character_sheet_params
    params.permit(:name, :description, :game_system_id)
  end
end
