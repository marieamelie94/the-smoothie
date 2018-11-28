class AddPhotoToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :photo, :string
  end
end
