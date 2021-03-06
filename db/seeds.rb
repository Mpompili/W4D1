# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{username: 'jessica1'},{username: 'stacy2'}])
artworks = Artwork.create([{title: 'rasberry cake', image_url: 'www.rasp.com', artist_id: users.first.id},
  {title: 'strawberry cake', image_url: 'www.starw.com', artist_id: users.last.id}])

ArtworkShare.create!(artwork_id: 1, viewer_id: 2)
ArtworkShare.create!(artwork_id: 2, viewer_id: 1)
