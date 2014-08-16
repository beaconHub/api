# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create(email: 'info@beaconhub.org', password: 'beaconhub', password_confirmation: 'beaconhub')

Beacon.destroy_all

Beacon.create(
  name: 'Reception',
  description: 'Garage 8/F Reception',
  uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D",
  major: 8,
  minor: 7102,
  address: "33 Des Voeux Road, Central, Hong Kong",
  link: "http://www.thegaragesociety.com/"
)
Beacon.create(
  name: 'Member Zone',
  description: 'Garage 8/F Member Zone',
  uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D",
  major: 8,
  minor: 31008,
  address: "33 Des Voeux Road, Central, Hong Kong",
  link: "http://www.thegaragesociety.com/"
)
Beacon.create(
  name: 'Batman Classroom',
  description: 'Garage 8/F Batman Classroom',
  uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D",
  major: 8,
  minor: 31664,
  address: "33 Des Voeux Road, Central, Hong Kong",
  link: "http://www.thegaragesociety.com/"
)
Beacon.create(
  name: 'Reception',
  description: 'Garage 9/F Reception',
  uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D",
  major: 9,
  minor: 62353,
  address: "33 Des Voeux Road, Central, Hong Kong",
  link: "http://www.thegaragesociety.com/"
)
Beacon.create(
  name: 'Open Area',
  description: 'Garage 9/F Open Area',
  uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D",
  major: 9,
  minor: 26057,
  address: "33 Des Voeux Road, Central, Hong Kong",
  link: "http://www.thegaragesociety.com/"
)
Beacon.create(
  name: 'Roof',
  description: 'Garage 9/F Roof',
  uuid: "B9407F30-F5F8-466E-AFF9-25556B57FE6D",
  major: 9,
  minor: 50549,
  address: "33 Des Voeux Road, Central, Hong Kong",
  link: "http://www.thegaragesociety.com/"
)
