class TraitsController < ApplicationController

  def create
    @trait = Trait.create!(trait_params)
    json_response(@trait, :created)
  end

  def update
    @trait = Trait.find(params[:id])
    if @trait.update!(trait_params)
      render status: 200, json: {
        message: "Your game system has successfully been updated."
      }
    end
  end

  def destroy
    @trait = Trait.find(params[:id])
    if @trait.destroy
      render status: 200, json: {
        message: "Your game system has been deleted."
      }
    end
  end

private
  def trait_params
    params.permit(:name, :property, :section_id)
  end
end
