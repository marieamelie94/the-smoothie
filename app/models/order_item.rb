class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :smoothie
end
