class Location < ApplicationRecord
  # Adding relationship between Events and Locations.
  has_and_belongs_to_many :events

  # Adding user association through visits.
  has_many :visits
  has_many :visitors, through: :visits, source: 'user'
end
