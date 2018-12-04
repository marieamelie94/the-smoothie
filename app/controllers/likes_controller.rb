class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @user = current_user
    like_param.each do |ingredient|
      next unless ingredient.empty?
      @ingedient = Ingredient.where(name: ingredient)
      next unless !@ingredient.nil?
      @like = Like.new(user: @user, ingredient: @ingredient)
      # @allergy.user = @user
      if @like.save!
        render preferences_path
      else
        render preferences_path
      end
    end
  end

  private

  def like_param
    params.require(:like).permit(ingredients: [])
  end
end
