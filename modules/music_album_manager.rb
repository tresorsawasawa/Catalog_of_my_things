require_relative '../classes/music_album'
require_relative '../classes/genre'
require_relative 'helper'

module MusicAlbumManager
  def display_music_album(music_albums)
    puts "\nHERE IS YOUR MUSIC ALBUMS LIST\n\n"
    puts "Database is empty. Add a music album.\n\n" if music_albums.empty?
    music_albums.each do |music_album|
      puts "Music album id: #{music_album.id}"
      puts "Publish date:#{music_album.publish_date}"
      puts "Archived:#{music_album.archived}"
      puts "On spotify:#{music_album.on_spotify}"
      puts "Genre:#{music_album.genre.name}"
      puts
    end
  end

  def music_album_inputs
    print 'Enter publish date(i.e YYYY/MM/DD): '
    publish_date = gets.chomp
    print 'Enter archived [Yes/No]: '
    archived = gets.chomp
    print 'Enter on spotify/not on spotify [Yes/No]: '
    on_spotify = gets.chomp
    [publish_date, archived, on_spotify]
  end

  def create_new_music_album(genres)
    puts
    puts "CREATE A NEW MUSIC ALBUM\n\n"
    publish_date, archived, on_spotify = music_album_inputs
    puts
    music_album = MusicAlbum.new(on_spotify, publish_date, archived)
    add_genres(genres, music_album)
    puts
    puts "Music_album created successfully.\n\n"
    music_album
  end
end
