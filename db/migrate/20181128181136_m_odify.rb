class MOdify < ActiveRecord::Migration[5.2]
  def change
     change_column :doses, :unit, :string, default: "g"
  end
end
