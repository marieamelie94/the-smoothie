class ModifyUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :like_id
    remove_column :users, :dislike_id
  end
end
