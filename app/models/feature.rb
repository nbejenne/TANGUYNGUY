class Feature < ApplicationRecord
  has_many :spot_features, dependent: :destroy
  validates :name, :picto, presence: true
end
