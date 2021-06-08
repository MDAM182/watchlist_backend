# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Program.destroy_all


comedy = Genre.create(name: "Comedy")
scifi = Genre.create(name: "Sci-Fi")
action = Genre.create(name: "Action")
horror = Genre.create(name: "Horror")
drama = Genre.create(name: "Drama")
fantasy = Genre.create(name: "fantasy")

film = Program.create(media_type: "Film")
tv = Program.create(media_type: "TV")


Program.create(title: "Fight Club", favorite_quote: "It's only after we've lost everything that we're free to do anything." , media_type: film.media_type , image_url: "https://upload.wikimedia.org/wikipedia/en/f/fc/Fight_Club_poster.jpg",genre_id: drama.id)

# source: https://en.wikipedia.org/wiki/Fight_Club
