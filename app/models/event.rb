class Event < ApplicationRecord
  # Adding relationship between Events and Locations.
  has_and_belongs_to_many :locations

end
