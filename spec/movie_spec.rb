require_relative '../classes/movie'
require_relative '../classes/item'

describe Movie do
    before(:all) do
        @movie = Movie.new(true, '2011-12-9', true)
    end

    it 'Create instance of Movie class' do
      expect(@music_album.instance_of?(Movie)).to be(true)
    end

