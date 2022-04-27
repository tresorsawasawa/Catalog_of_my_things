require 'date'

class Item
  attr_accessor :publish_date, :genre
  attr_reader :id, :archived, :author, :source, :label

  def initialize(publish_date, archived)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def author=(author)
    @author = author
  end

  def label=(label)
    @label = label
  end

  def source=(source)
    @source = source
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    now = Date.today.year
    published = publish_date.year
    (now - published) >= 10
  end
end
