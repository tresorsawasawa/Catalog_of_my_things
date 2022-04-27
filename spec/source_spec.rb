require_relative '../classes/source'
require_relative '../classes/item'

describe Source do
  context 'When instantiated' do
    before(:all) do
      @source = Source.new('From a friend')
    end

    context 'Source class instance' do
      it '@source Should be an instance of class Source' do
        expect(@source).to be_an_instance_of Source
      end
    end

    context '@source should have attribute name' do
      it '@source.title Should return name' do
        expect(@source.name).to eq 'From a friend'
      end
    end

    context '@source should have attribute items defautl to []' do
      it '@source.items Should return []' do
        expect(@source.items).to eq []
      end
    end

    context '@source should add an item ' do
      it '@source.items Should return [item]' do
        item = Item.new('2010/07/08', true)
        @source.add_item(item)
        expect(@source.items).to eq [item]
        expect(item.source).to eq @source
      end
    end
  end
end