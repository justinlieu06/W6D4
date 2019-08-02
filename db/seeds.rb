# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { anme: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.create(name: 'bob')
  User.create(name: 'mike')
  User.create(name: 'coolboi420')
  User.create(name: 'therealcoolboi420')
  User.create(name: 'asdfsdsfsadf')
  
  Artwork.create(artist_id: '1', title: 'Mirror',image_url: 'youareart.com')
  Artwork.create(artist_id: '1', title: 'Scream',image_url: 'art.com')
  Artwork.create(artist_id: '3', title: 'Train',image_url: 'train.com')
  Artwork.create(artist_id: '4', title: 'sad boi',image_url: 'instagram.com')
  Artwork.create(artist_id: '5', title: 'milenial',image_url: 'netflixandchill.com')

  ArtworkShare.create(viewer_id: 1, artwork_id: 1)
  ArtworkShare.create(viewer_id: 2, artwork_id: 1)
  ArtworkShare.create(viewer_id: 3, artwork_id: 2)
  ArtworkShare.create(viewer_id: 4, artwork_id: 3)
  ArtworkShare.create(viewer_id: 5, artwork_id: 4)
end
