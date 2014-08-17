#= require underscore
#= require gmaps/google

content = [
  {lat: 0, lng: 0,infowindow: "hello!", link: 'a'},
  {lat: 20, lng: 120,infowindow: "hello!", link: 'b'}
]

@convertBeacon = (objects) ->
  array = []

  for x in objects
    y =
      lat: x.lat
      lng: x.lng
      picture:
        url: '/greenMarker.png'
        width: 23
        height: 35
      infowindow: x.description
    array.push y

  googleMap array

@googleMap = (content) ->
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers(content)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()

$ ->
  # googleMap() unless $('#map').length == 0
  $.ajax
    url: '/beacons.json'
  .done (data) ->
    convertBeacon data
