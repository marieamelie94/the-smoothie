class IngredientAddDescription < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :description, :string
  end
end
