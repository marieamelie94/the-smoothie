class AddValueToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :value, :integer
  end
end
