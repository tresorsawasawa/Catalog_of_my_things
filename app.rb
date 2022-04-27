# require_relative './console/display_music_albums'
require_relative './classes/book'
require_relative './classes/label'

class App
  attr_accessor :books, :games, :authors, :music_albums

  def initialize
    # all are default values, you can  change them according your tasks
    @books = []
    @authors = []
    @labels = []
    @genres = []
    @music_albums = []
    @games = []
  end

  def list_all_books
    @books.each do |book|
      puts "Title: #{book.title}, Publisher: #{book.publisher},
      Cover state: #{book.cover_state}, Date of Publish: #{book.publish_date}"
    end
  end

  def add_a_book
    puts 'Please write in title: '
    title = gets.chomp

    puts 'Please write in publisher: '
    publisher = gets.chomp

    puts 'Please write in cover state ["good"/"bad"]'
    cover_state = gets.chomp

    puts 'Please write in date of publish [Enter date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    @books.push(Book.new(title, publisher, cover_state, publish_date))
    puts 'Book is created'
  end

  def list_all_labels
    puts 'There are no labels available' if @labels.empty?
    @labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end
  end

  def add_a_movie
    puts 'add a book'
  end

  def save_book
    puts 'save_book'
  end

  def load_book
    puts 'Load book'
  end

  def list_all_music_albums
    display_music_album(@music_albums)
  end

  def list_all_genres
    puts 'list genres'
  end

  def add_music_album
    @music_albums << create_new_music_album(@genres)
  end

  def list_all_games
    puts 'list games'
  end

  def add_a_game
    puts 'Add game'
  end

  def list_all_authors
    puts 'list authors'
  end

  def list_all_movies
    puts 'list movies'
  end

  def list_all_sources
    puts 'list all sources'
  end
end

app = App.new
p app.list_all_authors
