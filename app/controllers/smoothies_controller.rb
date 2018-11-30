class SmoothiesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @smoothies = Smoothie.all
  end

  def show
    @smoothie = Smoothie.find(params[:id])
  end
end
