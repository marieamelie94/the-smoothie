class AddPriceToOrders < ActiveRecord::Migration[5.2]
  def change
    add_monetize :orders, :smoothies_price, currency: { present: false }
  end
end
