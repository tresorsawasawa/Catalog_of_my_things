require_relative '../classes/game_author'
require_relative '../classes/item'

describe Author do
  before(:all) do
    @author = Author.new('John', 'Doe')
  end

  context '#initialize' do
    it 'should initialize a new author' do
      expect(@author.first_name).to eq('John')
      expect(@author.last_name).to eq('Doe')
      expect(@author.items).to eq([])
    end
  end

  context '#add_item' do
    it 'should add item to author' do
      item = Item.new(Date.today, false)
      @author.add_item(item)
      expect(@author.items).to eq([item])
    end
  end
end
