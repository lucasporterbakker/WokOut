class Meal < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :categroy, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
