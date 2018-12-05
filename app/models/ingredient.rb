class Ingredient < ApplicationRecord
  has_many :doses
  has_many :smoothies, through: :doses
  has_many :allergies
  has_many :likes
  has_many :dislikes

  validates :name, presence: true
end
