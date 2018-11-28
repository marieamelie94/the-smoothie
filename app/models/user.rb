class User < ApplicationRecord
  has_many :likes
  has_many :dislikes
  has_many :allergies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
