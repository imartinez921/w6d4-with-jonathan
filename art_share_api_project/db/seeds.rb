# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#starts at id 3
User.create(username: 'Banksy')
User.create(username: 'Leonardo')
User.create(username: 'VanGogh')

#starts at id 1
Artwork.create(title: 'Girl with Red Balloon', image_url: 'redballoon', artist_id: 3)
Artwork.create(title: 'Mona Lisa', image_url: 'monalisa', artist_id: 4)
Artwork.create(title: 'Starry Night', image_url: 'starrynight', artist_id: 5)
Artwork.create(title: 'No Ear', image_url: 'noear', artist_id: 5)

ArtworkShare.create(artwork_id: 1, viewer_id: 1)
ArtworkShare.create(artwork_id: 2, viewer_id: 1)
ArtworkShare.create(artwork_id: 3, viewer_id: 1)
ArtworkShare.create(artwork_id: 2, viewer_id: 2)
ArtworkShare.create(artwork_id: 1, viewer_id: 2)
ArtworkShare.create(artwork_id: 4, viewer_id: 2)