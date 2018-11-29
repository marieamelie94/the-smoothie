class OrderItemsController < ApplicationController
  def new
    @order_item = Order_item.new
  end

  def create
  end

private

end

#     t.bigint "order_id"
#     t.bigint "smoothie_id"
#     t.integer "smoothie_quantity"
