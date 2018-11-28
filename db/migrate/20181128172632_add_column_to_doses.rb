class AddColumnToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :unit, :integer, default: 0
  end
end
