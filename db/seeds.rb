# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Artwork.destroy_all
Artist.destroy_all

artist1 = Artist.create!(name: "Leonardo da Vinci", country: "Italy", period: "Renaissance")
artist1.artworks.create!([
    {
        title: "Mona Lisa",
        location: "Louvre",
        city: "Paris",
        country: "France",
        continent: "Europe"
    },
    {
        title: "The Last Supper",
        location: "Santa Maria delle Grazie",
        city: "Milan",
        country: "Italy",
        continent: "Europe"
    }
])

artist2 = Artist.create!(name: "Michelangelo", country: "Italy", period: "Renaissance")
artist2.artworks.create!([
    {
        title: "The Last Judgement",
        location: "Sistine Chapel",
        city: "Vatican City",
        country: "Vatican City",
        continent: "Europe"
    },
    {
        title: "The Creation of Adam",
        location: "Sistine Chapel",
        city: "Vatican City",
        country: "Vatican City",
        continent: "Europe"
    }
])

artist3 = Artist.create!(name: "Vincent van Gogh", country: "Netherlands", period: "Postimpresionism")
artist3.artworks.create!([
    {
        title: "The Starry Night",
        location: "Museum of Modern Art",
        city: "New York",
        country: "United States",
        continent: "North America"
    }
])

artist4 = Artist.create!(name: "Edvard Munch", country: "Norway", period: "Expressionism")
artist4.artworks.create!([
    {
        title: "The Scream",
        location: "National Museum of Art",
        city: "Oslo",
        country: "Norway",
        continent: "Europe"
    }
])
