require_relative '../classes/movie'
require_relative '../classes/item'

describe Movie do
  before(:all) do
    @movie = Movie.new(true, '2020/12/9')
  end

  it 'Create instance of Movie class' do
    expect(@movie).to be_an_instance_of(Movie)
  end

 
end
