class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
      params[:user][:allergy][:ingredient].each_with_index do |ingredient, index|
      Allergy.create!(ingredient: Ingredient.find_by(name: ingredient), user: current_user) if index > 0
    end

    params[:user][:dislike][:ingredient].each_with_index do |ingredient, index|
      Dislike.create!(ingredient: Ingredient.find_by(name: ingredient), user: current_user) if index > 0
    end

    params[:user][:like][:ingredient].each_with_index do |ingredient, index|
      Like.create!(ingredient: Ingredient.find_by(name: ingredient), user: current_user) if index > 0
    end

    if current_user.update(user_params)
      redirect_to smoothies_choose_amount_path
    else
      redirect_to preferences_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:age, :gender, :weight, :height, :goal)
  end

end
