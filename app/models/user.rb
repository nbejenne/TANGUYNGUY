class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spots, dependent: :destroy
  has_many :bookings, dependent: :destroy
  mount_uploader :avatar, PhotoUploader

  # validates :first_name, :last_name, :nickname, presence: true
  # validates :nickname, uniqueness: true
end
