class RemoveFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :grams
    remove_column :doses, :mililiters
  end
end
