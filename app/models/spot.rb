class Spot < ApplicationRecord
  belongs_to :user
  has_many :spot_features, dependent: :destroy
  accepts_nested_attributes_for :spot_features,
                                reject_if: proc { |attributes| attributes[:feature].blank? },
                                allow_destroy: true
  has_many :bookings, dependent: :destroy
  validates :description, :address, :name, presence: true
  mount_uploader :photo, PhotoUploader

end
