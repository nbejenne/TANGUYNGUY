class Spot < ApplicationRecord
  belongs_to :user
  has_many :spot_features, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :description, :address, :name, presence: true

end
