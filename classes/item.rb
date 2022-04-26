require 'date'

class Item
  attr_accessor :publish_date, :genre, :author, :source, :label
  attr_reader :id, :archived

  def initialize(publish_date, archived)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def can_be_archived?
    now = Date.today.year
    published = publish_date.year
    (now - published) >= 10
  end
end
