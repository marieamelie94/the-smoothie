class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
    @user = current_user
    @user = User.update(user_params)
    # if @user.update
    #   redirect_to ' ' will redirect to the smoothie results
    # else
    #   render '' will render the form
    # end
  end

  private

  def user_params
    params.require(:user).permit(:age, :gender, :weight, :height, :allergie_id, :likes, :dislikes, :goal)
  end
end
