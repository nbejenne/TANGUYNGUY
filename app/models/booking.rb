class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  validates :starts_at, :ends_at, presence: true
  validates :rating, inclusion: { in: [nil, 1, 2, 3, 4, 5] }
  scope :reviewed, -> { where("review <> ''") }
end
