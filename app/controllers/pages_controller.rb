class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  # before_action :authenticate_user!, only: [:show]
  before_action :require_profile_exist

  def show
    # render template: "pages/home"
    render template: "pages/#{params[:page]}"
  end

  private

  def require_profile_exist
    if params[:page] == 'choose-amount'
      if true #to add a check whether availability ok
        redirect_to(preferences_path)
      else
        redirect_to(configure_page)
      end
    end
  end
end
