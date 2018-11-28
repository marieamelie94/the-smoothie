class PreferencesController < ApplicationController
  def edit
    @user = current_user
    @likes = ["banana", "kale", "kiwi"]
  end
end
