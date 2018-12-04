class Ingredient < ApplicationRecord
  has_many :doses
  has_many :smoothies, through: :doses
  has_many :allergies

  validates :name, presence: true
end
