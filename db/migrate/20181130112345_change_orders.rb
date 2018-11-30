class ChangeOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :delivery_address, :string
  end
end
