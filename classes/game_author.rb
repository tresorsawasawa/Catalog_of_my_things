require_relative './item'

require_relative 'game.rb'
class Author < Item
  attr_accessor :id, :first_name, :last_name, :items

  def initialize(first_name, last_name)
    super(Date.today, false)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end

# class Menu
  # def options
  #   puts 'Last played at (yyyy-mm-dd): '
  #   date_answer = gets.chomp
  #   last_played_at = date_answer

  #   puts 'Is it Multiplayer? [Y/N]: '
  #   answer = gets.chomp.downcase
  #   multiplayer = multiplayer?(answer)

  #   puts 'Publish date (yyyy-mm-dd): '
  #   publisher_answer = gets.chomp
  #   publish_date = validate_date(date_answer)

  #   game = Game.new(last_played_at, multiplayer, publish_date)

  # end
# end
