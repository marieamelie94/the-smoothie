class PaymentsController < ApplicationController
  before_action :set_order
def new
  @order = Order.find(params[:id])
end

def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,  # You should store this customer id and re-use it.
    amount:       @order.total_smoothies_price_cents,
    description:  "Payment for #{@order.smoothies_amount} smoothies for order #{@order.id}",
    currency:     @order.total_smoothies_price.currency
  )

  @order.update(payment: charge.to_json, payed: true)
  redirect_to order_path(@order)
rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_order_payment_path(@order)
end

private

  def set_order
    @order = current_user.orders.where(payed: false).find(params[:order_id])
  end
end
