class AddTotalPriceToOrders < ActiveRecord::Migration[5.2]
  def change
    add_monetize :orders, :total_smoothies_price, currency: { present: false }
  end
end
