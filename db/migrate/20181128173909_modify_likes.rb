class ModifyLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :ingredient, foreign_key: true
    remove_column :likes, :name
    add_reference :dislikes, :ingredient, foreign_key: true
    remove_column :dislikes, :name
  end
end
