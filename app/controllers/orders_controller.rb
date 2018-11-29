class OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.build_order_items
  end

  def create
    @order = Order.new(user_id: current_user.id)
    if @order.save
      redirect_to order_configure_path(@order)
    else
      render :choose_amount
    end
  end

  def add_items
    @order = Order.find(params[:order_id])
    order_item_params[:order_items].each do |smoothie, quantity|
      next unless quantity.present?
      smoothie_id = smoothie.gsub('smoothie_quantity', '')
      OrderItem.create(smoothie_quantity: quantity, order: @order, smoothie_id: smoothie_id)
    end
    redirect_to order_confirmation_path
  end

  def confirmation
  end

  def choose_amount
  end

  def configure
    @smoothies = Smoothie.all
    @order = Order.find(params[:order_id])
  end

  private

  def order_item_params
    params.require(:order).permit(order_items: {})
  end
end
