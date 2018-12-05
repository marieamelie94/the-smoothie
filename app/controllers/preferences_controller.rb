class PreferencesController < ApplicationController
  def edit
    @user = current_user
    @allergies = Allergy.all
  end
end
