class AllergiesController < ApplicationController
  def new
    @allergy = Allergy.new
  end

  def index
    @allergies = Allergy.all
  end

  def show
    @allergie = Allergy.find(params[id])
  end

  def create
    @user = current_user
    allergy_params[:ingredient].each do |ingredient|
      p ingredient
      if ingredient == ""
        p "empty 1 ingredient"
      else
        @ingredient = Ingredient.where(name: ingredient.to_sym)
        p "empty 2 ingredient"
        if @ingredient.nil?
          p "empty 2 ingredient"
        else
          p "hhhhhhhhhhhhhhhhhhhhhhhhhhhh"
          p "Hello #{@ingredient.name}"
          @user.allergies << @ingredient

          # @allergy = Allergy.new(user: @user, ingredient: @ingredient)
          # @allergy.save!
        end
      end
    end
    render 'preferences/edit'
  end

  private

  def allergy_params
    params.require(:allergy).permit(ingredient: [])
  end
end
