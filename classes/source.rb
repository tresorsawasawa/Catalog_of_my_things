class Source
  attr_reader :items
  attr_accessor :name, :id

  def initialize(name)
    @id = rand(50...500)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.source = self
  end
end
