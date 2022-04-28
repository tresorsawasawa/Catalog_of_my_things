require_relative 'app'

# rubocop:disable Metrics/CyclomaticComplexity
class Main
  def options
    puts 'Welcome, what would you like to do?'
    puts "
    1. List all books
    2. List all music albums
    3. List all movies
    4. List of games
    5. List all genres
    6. List all labels
    7. List all authors
    8. List all sources
    9. Add a book
    10. Add a music album
    11. Add a movie
    12. Add a game
    13. Exit\n\n"
    puts 'Select option by typing the number: '
  end

  def validate_input
    app = App.new
    option = nil
    while option != 13
      options
      option = gets.chomp.to_i

      case option
      when 1
        app.list_all_books
      when 2
        app.list_all_music_albums
      when 3
        app.list_all_movies
      when 4
        app.list_all_games
      when 5
        app.list_all_genres
      when 6
        app.list_all_labels
      when 7
        app.list_all_authors
      when 8
        app.list_all_sources
      when 9
        app.add_a_book
      when 10
        app.add_music_album
      when 11
        app.add_a_movie
      when 12
        app.add_a_game
      when 13
        app.save_data
        puts "\nThank you for the using the catalog of things. Goodbye!\n\n"
        app.save_data
      else
        puts 'Invalid option'
      end
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

main = Main.new
main.validate_input
