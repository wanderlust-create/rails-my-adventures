class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :user_cities, dependent: :destroy
  has_many :cities, through: :user_cities
  has_many :events, through: :cities
end
