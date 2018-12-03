class Order < ApplicationRecord
  belongs_to :user
  monetize :smoothies_price_cents
  monetize :total_smoothies_price_cents
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items
  has_many :smoothies, through: :order_items

  validates :user_id, presence: true
  # validates :delivery_address, presence: true    Need lambda if order.confirmed
  # validates :delivery_date, presence: true
end
