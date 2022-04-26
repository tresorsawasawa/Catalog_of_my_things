require_relative 

class Main
  def options
    puts 'Welcome, what would you like to do?'
    puts '
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
    13. Quit
    '
    puts 'Select option by typing the number: '

    option = gets.chomp.to_i
    validate_input(option)
  end

  def validate_input(option)
    case option
    when 1
      puts 'List all books'
    when 2
      puts 'List all music albums'
    when 3
      puts 'List all movies'
    when 4
      puts 'List of games'
    when 5
      puts 'List all genres'
    when 6
      puts 'List all labels'
    when 7
      puts 'List all authors'
    when 8
      puts 'List all sources'
    when 9
      puts 'Add a book'
    when 10
      puts 'Add a music album'
    when 11
      puts 'Add a movie'
    when 12
      puts 'Add a game'
    when 13
      puts 'Thank you for using our catalog of things. Goodbye!'
      exit
    else
      puts 'Invalid option'
    end
  end
end

main = Main.new
main.options
