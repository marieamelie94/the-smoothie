class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @order.build_order_items
  end

  def create
    @order = Order.new(user_id: current_user.id)
    smoothies_price_cents = 0
    smoothies_amount = params[:amount]
    case smoothies_amount
        when "7" then smoothies_price_cents = 650
        when "14" then smoothies_price_cents = 550
        when "21" then smoothies_price_cents = 450
        when "28 "then smoothies_price_cents = 400
    end
    @order.smoothies_amount = smoothies_amount
    @order.smoothies_price_cents = smoothies_price_cents
    @order.total_smoothies_price_cents = smoothies_price_cents * smoothies_amount.to_i
    if @order.save
      redirect_to order_configure_path(@order)
    else
      render :choose_amount
    end
  end

  def choose_amount
  end

  def configure
    @smoothies = Smoothie.all
    @order = Order.find(params[:order_id])
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
    @order = Order.find(params[:order_id])
  end

  def delivery_info
    @order = Order.find(params[:order_id])
    @order.update(order_delivery_params)
    #   render order_confirmation_path(@order)
    # else
    #   flash.now[:alert] = 'Please check your address'
    # end
  end

  private

  def order_item_params
    params.require(:order).permit(order_items: {})
  end

  def order_delivery_params
    params.require(:order).permit(:smoothies_price_cents, :delivery_address, :delivery_date, :delivery_time_period)
  end
end
