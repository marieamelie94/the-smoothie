class RemoveLikeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :likes
    remove_column :users, :dislikes
  end
end
