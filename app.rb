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
    puts 'list music albums'
  end

  def list_all_genres
    puts 'list genres'
  end

  def add_music_album
    puts 'add music album'
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
