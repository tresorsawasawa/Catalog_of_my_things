def add_genres(genres, item)
  return if genres.empty?

  puts 'Select the genre'
  genres.each_with_index { |genre, idx| puts "#{idx + 1} - #{genre.name}" }
  genres_id = gets.chomp.to_i
  genres[genres_id].add_item(item)
end

def search_genre(genres, key)
  genres.select { |p| p.name == key } [0]
end

def add_label(labels, item)
  return if labels.empty?

  puts 'Select the label '
  labels.each_with_index { |label, idx| puts "#{idx + 1} - #{label.title}" }
  label_id = gets.chomp.to_i
  labels[label_id].add_item(item)
end

def search_label(labels, key)
  labels.select { |p| p.title == key } [0]
end
