class SmoothiesController < ApplicationController
  def index
    @smoothies = Smoothie.all
  end

  def show
    @smoothie = Smoothie.find(params[:id])
  end

  def configure
    @smoothies = Smoothie.all
  end
end
