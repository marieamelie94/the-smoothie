class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
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
