require_relative '../classes/movie'

module AddMovie
  def new_movie
    puts 'Please write in silet: '
    silet = gets.chomp

    puts 'Please write in date of publish [Enter date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    Movie.new(silet, publish_date)
  end
end
