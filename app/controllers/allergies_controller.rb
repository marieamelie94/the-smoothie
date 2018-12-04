class AllergiesController < ApplicationController
  def new
    @allergy = Allergy.new
  end

  def create
    @user = current_user
    @allergy = Allergy.new(allergy_params)
    @allergy.user = @user
    @allergy.save!
  end

  private

  def allergy_params
    params.require(:allergy).permit(:ingredient_id)
  end
end
