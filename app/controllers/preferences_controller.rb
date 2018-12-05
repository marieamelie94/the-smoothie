class PreferencesController < ApplicationController
  def edit
    @user = current_user
    @allergies = Allergy.all
    @allergy = Allergy.new
    @dislike = Dislike.new
    @like = Like.new
  end
end
