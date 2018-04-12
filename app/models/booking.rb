class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meal
  validates :date, presence: true
end
