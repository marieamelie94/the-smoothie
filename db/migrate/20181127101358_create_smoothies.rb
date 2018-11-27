class CreateSmoothies < ActiveRecord::Migration[5.2]
  def change
    create_table :smoothies do |t|
      t.string :name
      t.string :nickname
      t.string :description
      t.string :nutrition_facts
      t.string :benefits
      t.string :preparation_instructions

      t.timestamps
    end
  end
end
