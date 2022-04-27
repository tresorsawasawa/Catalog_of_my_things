require 'date'

require_relative './item'
# Create a Game class in a separate .rb file.
# Create an Author class with an association to the Item class (in a separate .rb file).
# All Game class properties visible in the diagram should be defined and set up in the constructor method.
# All Author class properties visible in the diagram should be defined and set up in the constructor method.
# Implement methods:
# add_item method in the Author class
# should take an instance of the Item class as an input
# should add the input item to the collection of items
# should add self as a property of the item object (by using the correct setter from the item object)
# can_be_archived?() in the Game class
# should override the method from the parent class
# should return true if parent's method returns true AND if last_played_at is older than 2 years
# otherwise, it should return false


class Game < Item
  attr_accessor :multiplayer, :last_played_at
  
  def initialize(multiplayer, last_played_at, publish_date = Date.today)
    super(publish_date, false)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end 


  private

  def can_be_archived?
    @last_played_at < 2.years.ago || super 
  end
end
