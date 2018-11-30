class ChangeOrdersTime < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :delivery_date, :string
    add_column :orders, :delivery_date, :date
    add_column :orders, :delivery_start_time, :time
    add_column :orders, :delivery_end_time, :time
  end
end
