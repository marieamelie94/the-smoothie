class ModifyDoses < ActiveRecord::Migration[5.2]
  def change
    change_column :doses, :unit, :string
  end
end
