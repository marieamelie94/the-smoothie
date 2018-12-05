class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @user = current_user
    likes_params[:ingredient].each do |ingredient|
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

          @like = Like.new(user_id: @user.id, ingredient_id: @ingredient.ids[0])
          if @like.save!
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

  def likes_params
    params.require(:like).permit(ingredient: [])
  end
end
