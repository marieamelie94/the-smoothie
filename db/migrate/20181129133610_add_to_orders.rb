class AddToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :completed, :boolean, default: false, null: false
  end
end
