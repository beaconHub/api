json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :name, :description, :uuid, :major, :minor, :lat, :lng, :location, :url
  json.url beacon_url(beacon, format: :json)
end
