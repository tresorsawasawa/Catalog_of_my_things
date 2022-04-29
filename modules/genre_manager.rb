require_relative '../classes/genre'

module GenreManager
  def display_genres(genres)
    puts
    puts 'Database is empty. Add a genre.' if genres.empty?
    puts "Here is genres list: "
    genres.each { |genre| puts "[Genre] ID: #{genre.id} Name: #{genre.name}" }
    puts
  end
end
