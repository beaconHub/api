json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :name, :description, :uuid, :major, :minor, :lat, :lng, :address, :link
  json.url beacon_url(beacon, format: :json)
end
