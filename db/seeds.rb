# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.destroy_all
# List.destroy_all
# puts "Lists creation Started"
# List.create!(name: "Best Movies")
# List.create!(name: "Worst Movies")
# List.create!(name: "Cool Movies")
# List.create!(name: "Classic Movies")

# puts "Lists creation finished"


# Bookmark.destroy_all

# puts "Bookmarks creation Started"
# Bookmark.create!(comment: "Yeeeeeeee", list_id: 12, movie_id: 13)
# Bookmark.create!(comment: "yaaaaaaaaah" , list_id: 13, movie_id: 14)
# Bookmark.create!(comment: "wooooooooow", list_id: 14, movie_id: 15)
# Bookmark.create!(comment: "hooooooooo", list_id: 15, movie_id: 16)
# Bookmark.create!(comment: "eeeeeeeeeeh", list_id: 12, movie_id: 14)
# Bookmark.create!(comment: "yeaaaaah", list_id: 13, movie_id: 15)
# Bookmark.create!(comment: "Cool Movie", list_id: 14, movie_id: 16)
# Bookmark.create!(comment: "A Classic", list_id: 15, movie_id: 13)

# puts "Lists creation finished"

require 'open-uri'
require 'json'


url = "https://tmdb.lewagon.com/movie/top_rated"

response = URI.open(url).read
movies = JSON.parse(response)


movies['results'].each do |movie|
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
  )
end

url2 = "https://tmdb.lewagon.com/movie/popular"

response2 = URI.open(url2).read
movies2 = JSON.parse(response2)


movies2['results'].each do |movie|
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
  )
end

# url3 = "https://tmdb.lewagon.com/movie/popular"

# response3 = URI.open(url3).read
# movies3 = JSON.parse(response3)


# movies3['results'].each do |movie|
#   Movie.create!(
#     title: movie['title'],
#     overview: movie['overview'],
#     poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
#   )
# end
