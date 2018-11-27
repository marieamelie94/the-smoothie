class Ingredient < ApplicationRecord
  has_many :doses
  has_many :smoothies, through: :doses

  validates :name, presence: true
end
