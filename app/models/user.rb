class User < ApplicationRecord
  has_many :meals# Include default devise modules. Others available are:
  validates :first_name, presence: true
  validates :last_name, presence: true
  mount_uploader :photo, PhotoUploader
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
