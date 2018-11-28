class AddForeignKeyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :like, foreign_key: true
    add_reference :users, :dislike, foreign_key: true
  end
end
