class AddPhotoToSmoothies < ActiveRecord::Migration[5.2]
  def change
    add_column :smoothies, :photo, :string
  end
end
