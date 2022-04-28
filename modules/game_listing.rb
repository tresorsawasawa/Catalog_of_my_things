require_relative './../app'
# The following options should be available:
# List of games
# List all authors (e.g. 'Stephen King')

module Listing
  def list_games
    games = App.instance_variable_get(:@games)
    puts games
  end
end
