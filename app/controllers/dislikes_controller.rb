class DislikesController < ApplicationController
  def new
    @dislike = Dislike.new
  end

  def create
    @user = current_user
    dislike_param.each do |ingredient|
      next unless ingredient.empty?
      @ingedient = Ingredient.where(name: ingredient)
      next unless !@ingredient.nil?
      @dislike = Dislike.new(user: @user, ingredient: @ingredient)
      # @allergy.user = @user
      if @dislike.save!
        render preferences_path
      else
        render preferences_path
      end
    end
  end

  private

  def dislike_param
    params.require(:dislike).permit(ingredients: [])
  end
end
