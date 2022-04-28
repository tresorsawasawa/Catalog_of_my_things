require 'json'
require_relative './modules/music_album_manager'
require_relative './modules/preserve_music_album_data'
require_relative './classes/music_album'
require_relative './classes/genre'
require_relative './classes/book'
require_relative './classes/label'
require_relative './modules/add_book'
require_relative './modules/preserve_book'

class App
  attr_accessor :books, :games, :authors, :music_albums

  include AddBook
  include PreserveBook

  def initialize
    # all are default values, you can  change them according your tasks
    @books = load_book
    @authors = []
    @labels = [Label.new('Gift', 'Green'), Label.new('New', 'Blue')]
    @genres = [Genre.new('Comedy'), Genre.new('Thriller')]
    @music_albums = load_music_albums(@genres)
    @games = []
  end

  def list_all_books
    puts 'There are no books available' if @books.empty?
    @books.each do |book|
      puts "Title: #{book.title}, Publisher: #{book.publisher},
      Cover state: #{book.cover_state}, Date of Publish: #{book.publish_date}"
    end
  end

  def add_a_book
    @books << new_book
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

  def save_data
    create_book
  end

  def list_all_music_albums
    display_music_album(@music_albums)
  end

  def list_all_genres
    puts 'list genres'
  end

  def add_music_album
    @music_albums << create_new_music_album(@genres, @labels)
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

  def save_data
    save_music_album(@music_albums)
  end
end
