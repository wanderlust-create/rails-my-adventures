class City < ApplicationRecord
  validates :name, presence: true
  validates :country, presence: true

  has_many :events, dependent: :destroy
  has_many :user_cities, dependent: :destroy
  has_many :users, through: :user_cities
end
