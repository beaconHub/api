class Beacon < ActiveRecord::Base
  geocoded_by :address, :latitude  => :lat, :longitude => :lng   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode  # auto-fetch address
end
