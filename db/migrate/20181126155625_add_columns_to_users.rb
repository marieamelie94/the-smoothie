class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :delivery_address, :string
    add_column :users, :age, :integer
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
    add_column :users, :likes, :string
    add_column :users, :dislikes, :string
    add_column :users, :gender, :string
    add_column :users, :goal, :string
  end
end
