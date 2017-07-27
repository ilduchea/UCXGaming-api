class SectionsController < ApplicationController

  def show
    @section = Section.find(params[:id])
    json_response(@section)
  end

  def create
    @section = Section.create!(section_params)
    json_response(@section, :created)
  end

  def update
    @section = Section.find(params[:id])
    if @section.update!(section_params)
      render status: 200, json: {
        message: "Your game system has successfully been updated."
      }
    end
  end

  def destroy
    @section = Section.find(params[:id])
    if @section.destroy
      render status: 200, json: {
        message: "Your game system has been deleted."
      }
    end
  end

private
  def section_params
    params.permit(:name)
  end
end
