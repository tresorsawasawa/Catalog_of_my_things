require_relative './../app'

module Listing
  def list_games(games)
    if games.empty?
      puts 'There are no games available'
    else
      games.each do |game|
        puts "
                LIST OF GAMES
          Game id: #{game.id}
          Game\'s last played at : #{game.last_played_at}
          Published on : #{game.publish_date}
          Multiplayer: #{game.multiplayer == 'y' ? 'Yes' : 'No'}
          "
      end
    end
  end

  def list_authors(authors)
    if authors.empty?
      puts 'There are no authors available'
    else
      authors.each do |author|
        puts "
                LIST OF AUTHORS
          Author's name: #{author.first_name} #{author.last_name}
        "
      end
    end
  end
end
