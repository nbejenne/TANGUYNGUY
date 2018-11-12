class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spots, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :first_name, :last_name, :nickname, :email, :password, :address, presence: true
  validates :email, :nickname, uniqueness: true
  validates_format_of :email, with: Devise::email_regexp
end
