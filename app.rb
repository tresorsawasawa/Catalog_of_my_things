require_relative './console/music_album_manager'
require_relative './classes/music_album'
require_relative './classes/genre'
require_relative './classes/label'

class App
  attr_accessor :books, :games, :authors, :music_albums

  def initialize
    # all are default values, you can  change them according your tasks
    @books = []
    # @authors = [Author.new('Stephen', 'King')]
    @labels = [Label.new('Gift', 'Green'), Label.new('New', 'Blue')]
    @genres = [Genre.new('Comedy'), Genre.new('Thriller')]
    @music_albums = []
    @games = []
  end

  def list_all_books
    puts 'list all books'
  end

  def add_a_book
    puts 'add a book'
  end

  def add_a_movie
    puts 'add a book'
  end

  def list_all_labels
    puts 'list all labels'
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
