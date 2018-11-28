class Dose < ApplicationRecord
  belongs_to :smoothie
  belongs_to :ingredient

  enum unit: {
    ml: "milliliters",
    g: "gramms"
  }
end
