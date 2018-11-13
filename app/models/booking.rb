class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  validates :starts_at, :ends_at, presence: true

  scope :reviewed, -> { where("review <> ''") }
end
