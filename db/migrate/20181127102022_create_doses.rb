class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.integer :grams
      t.integer :mililiters
      t.references :smoothie, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
