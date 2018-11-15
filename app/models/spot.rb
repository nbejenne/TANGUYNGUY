class Spot < ApplicationRecord
  belongs_to :user
  has_many :spot_features, dependent: :destroy
  accepts_nested_attributes_for :spot_features,
                                reject_if: proc { |attributes| attributes[:feature].blank? },
                                allow_destroy: true
  has_many :bookings, dependent: :destroy
  validates :description, :address, :name, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_address_and_name_and_description,
    against: [:name, :address, :description],
    using: {
      tsearch: { prefix: true }
    }
end
