class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.integer :sugar
      t.integer :carb
      t.integer :fat
      t.integer :protein
      t.integer :fiber
      t.integer :minerals
      t.boolean :liquid

      t.timestamps
    end
  end
end
