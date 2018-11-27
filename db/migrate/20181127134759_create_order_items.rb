class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :smoothie, foreign_key: true
      t.integer :smoothie_quantity

      t.timestamps
    end
  end
end
