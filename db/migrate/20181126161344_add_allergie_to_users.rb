class AddAllergieToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :allergies, foreign_key: true
  end
end
