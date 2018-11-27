class Smoothie < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses

  validates :name, presence: true
end
