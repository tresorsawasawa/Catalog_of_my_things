require_relative '../classes/movie'
require_relative '../classes/item'

describe Movie do
    before(:all) do
        @movie = Movie.new(true, '2011-12-9', true)
    end

    it 'Create instance of Movie class' do
      expect(@movie.instance_of?(Movie)).to be(true)
    end

    it 'Check move_to_archive : @archived = true (can_be_archived? = true)' do
      @movie.silet = true
      @movie.publish_date = '1990/02/03'
      @movie.move_to_archive
      expect(@movie.archived).to eq true
    end

