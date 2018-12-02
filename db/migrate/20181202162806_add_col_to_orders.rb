class AddColToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :smoothies_amount, :integer
  end
end
