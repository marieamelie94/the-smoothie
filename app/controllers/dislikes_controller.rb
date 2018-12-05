class DislikesController < ApplicationController
  def new
    @dislike = Disike.new
  end

  def create
    @user = current_user
    dislikes_params[:ingredient].each do |ingredient|
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
          # @user.allergies = @ingredient

          @dislike = Dislike.new(user_id: @user.id, ingredient_id: @ingredient.ids[0])
          if @dislike.save!
            p "saved ************"
          else
            p "failed !!!!!!!!!!!!"
          end
        end
      end
    end
    render 'preferences/edit'
  end

  private

  def dislikes_params
    params.require(:dislike).permit(ingredient: [])
  end
end
