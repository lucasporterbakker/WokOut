class User < ApplicationRecord
  # Include default devise modules. Others available are:
  validates :first_name, presence: true
  validates :last_name, presence: true
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
