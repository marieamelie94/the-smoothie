class AddStatusToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :payed, :boolean, default: false
    add_column :orders, :delivered, :boolean, default: false
  end
end
