class ModifyOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :delivery_start_time, :time
    remove_column :orders, :delivery_end_time, :time
    add_column :orders, :delivery_time_period, :string
  end
end
