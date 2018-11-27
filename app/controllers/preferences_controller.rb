class PreferencesController < ApplicationController
  def edit
    @user = current_user
  end
end
