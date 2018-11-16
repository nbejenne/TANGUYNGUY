class SpotFeature < ApplicationRecord
  belongs_to :spot
  belongs_to :feature
  validates :spot, uniqueness: { scope: :feature }
end
