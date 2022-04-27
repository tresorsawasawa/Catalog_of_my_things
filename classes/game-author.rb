require_relative './item'
# Create an Author class with an association to the Item class (in a separate .rb file).
# add_item method in the Author class
# should take an instance of the Item class as an input
# should add the input item to the collection of items
# should add self as a property of the item object (by using the correct setter from the item object)

class Author < Item
  attr_accessor :id, :first_name, :last_name, :items
  def initialize(first_name, last_name)
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
