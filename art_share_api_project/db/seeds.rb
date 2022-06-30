# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#starts at id 3
user1 = User.create(username: 'Banksy')
user2 = User.create(username: 'Leonardo')
user3 = User.create(username: 'VanGogh')

#starts at id 1
artwork1 = Artwork.create(title: 'Girl with Red Balloon', image_url: 'redballoon', artist_id: user1.id)
artwork2 = Artwork.create(title: 'Mona Lisa', image_url: 'monalisa', artist_id: user2.id)
artwork3 = Artwork.create(title: 'Starry Night', image_url: 'starrynight', artist_id: user3.id)
artwork4 = Artwork.create(title: 'No Ear', image_url: 'noear', artist_id: user3.id)

ArtworkShare.create(artwork_id: artwork1, viewer_id: user1)
ArtworkShare.create(artwork_id: artwork2, viewer_id: user1)
ArtworkShare.create(artwork_id: artwork3, viewer_id: user1)
ArtworkShare.create(artwork_id: artwork2, viewer_id: user2)
ArtworkShare.create(artwork_id: artwork1, viewer_id: user2)
ArtworkShare.create(artwork_id: artwork4, viewer_id: user2)