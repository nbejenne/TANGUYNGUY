class SpotFeature < ApplicationRecord
  belongs_to :spot, inverse_of: :spot_features
  belongs_to :feature
  validates :spot, uniqueness: { scope: :feature }
end
