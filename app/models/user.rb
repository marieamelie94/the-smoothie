class User < ApplicationRecord
  has_many :likes
  has_many :dislikes
  has_many :allergies
  has_many :orders
  has_many :ingredients, through: :allergies

  accepts_nested_attributes_for :allergies
  accepts_nested_attributes_for :likes
  accepts_nested_attributes_for :dislikes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
