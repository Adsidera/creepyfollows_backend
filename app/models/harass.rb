class Harass < ApplicationRecord
  geocoded_by :start_address
  after_validation :geocode
  validates :start_address, presence: true
  validates :happened_at, presence: true
  validates :description, presence: true
end
