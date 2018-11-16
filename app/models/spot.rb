class Spot < ApplicationRecord
  belongs_to :user
  has_many :spot_features, inverse_of: :spot, dependent: :destroy
  has_many :features, through: :spot_features
  accepts_nested_attributes_for :spot_features,
                                :reject_if => :all_blank,
                                #reject_if: proc { |attributes| attributes[:feature].blank? },
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

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
