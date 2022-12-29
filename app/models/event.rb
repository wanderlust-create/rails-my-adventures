class Event < ApplicationRecord
  validates :title, presence: true

  belongs_to :city
  has_many :user_cities, through: :city
  has_many :users, through: :user_cities
end
