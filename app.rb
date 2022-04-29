require 'json'
require_relative './modules/music_album_manager'
require_relative './modules/preserve_music_album_data'
require_relative './classes/music_album'
require_relative './classes/genre'
require_relative './classes/book'
require_relative './classes/label'
require_relative './modules/add_book'
require_relative './modules/genre_manager'
require_relative './modules/game_module'
require_relative './modules/game_listing'
require_relative './modules/preserve_book'
require_relative './classes/movie'
require_relative './modules/add_movie'
require_relative './modules/preserve_movie'

class App
  attr_accessor :books, :games, :authors, :music_albums

  include InitializeMethods
  include Listing
  include AddBook
  include PreserveBook

  include AddMovie
  include PreserveMovie

  include GenreManager
  include MusicAlbumManager
  include PreserveMusicAlbums


  def initialize
    # all are default values, you can  change them according your tasks
    @books = load_book
    @authors = []
    @labels = load_label
    @genres = music_genres
    @music_albums = load_music_albums(@genres)
    @games = []
    @movies = load_movie
    @source = load_source
  end

  def list_all_books
    puts 'There are no books available' if @books.empty?
    @books.each do |book|
      puts "Title: #{book.title}, Publisher: #{book.publisher},
      Cover state: #{book.cover_state}, Date of Publish: #{book.publish_date}"
    end
  end

  def list_all_movies
    puts 'There are no movies available' if @movies.empty?
    @movies.each do |movie|
      puts "Silet: #{movie.silet}, Date of Publish: #{movie.publish_date}"
    end
  end

  def add_a_book
    @books << new_book
    puts 'Book is created'
  end

  def add_a_movie
    @movies << new_movie
    puts 'movie is created'
  end

  def list_all_labels
    puts 'There are no labels available' if @labels.empty?
    @labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end
  end

  def save_data
    create_book

    create_movie

    save_music_album(@music_albums)

  end

  def list_all_music_albums
    display_music_album(@music_albums)
  end

  def list_all_genres
    display_genres(@genres)
  end

  def add_music_album
    @music_albums << create_new_music_album(@genres)
  end

  def list_all_games
    list_games(@games)
    sleep 2
  end

  def add_a_game
    game = create_new_game
    @games << game
    @authors << game.author
    puts "\nThank you for adding a new game.\n"
    sleep 3
  end

  def list_all_authors
    list_authors(@authors)
    sleep 2
  end

  def list_all_sources
    puts 'There are no sources available' if @source.empty?
    @source.each do |source|
      puts "Name: #{source.name}"
    end
  end
end
