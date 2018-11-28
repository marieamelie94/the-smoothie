class ModifyAllergies < ActiveRecord::Migration[5.2]
  def change
    add_reference :allergies, :ingredient, foreign_key: true
    add_reference :allergies, :user, foreign_key: true
    add_reference :likes, :user, foreign_key: true
    add_reference :dislikes, :user, foreign_key: true
    remove_column :allergies, :name
    remove_column :users, :allergies_id

  end
end
