class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :subtotal
      t.integer :total
      t.integer :delivery_fee
      t.integer :tip
      t.integer :delivery_address
      t.datetime :delivery_date

      t.timestamps
    end
  end
end
