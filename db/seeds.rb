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
puts "Movies creation Started"
Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "Movies creation finished"

List.destroy_all
puts "Lists creation Started"
List.create!(name: "Best Movies")
List.create!(name: "Worst Movies")
List.create!(name: "Cool Movies")
List.create!(name: "Classic Movies")

puts "Lists creation finished"


Bookmark.destroy_all

puts "Bookmarks creation Started"
Bookmark.create!(comment: "Yeeeeeeee", list_id: 12, movie_id: 13)
Bookmark.create!(comment: "yaaaaaaaaah" , list_id: 13, movie_id: 14)
Bookmark.create!(comment: "wooooooooow", list_id: 14, movie_id: 15)
Bookmark.create!(comment: "hooooooooo", list_id: 15, movie_id: 16)
Bookmark.create!(comment: "eeeeeeeeeeh", list_id: 12, movie_id: 14)
Bookmark.create!(comment: "yeaaaaah", list_id: 13, movie_id: 15)
Bookmark.create!(comment: "Cool Movie", list_id: 14, movie_id: 16)
Bookmark.create!(comment: "A Classic", list_id: 15, movie_id: 13)

puts "Lists creation finished"
