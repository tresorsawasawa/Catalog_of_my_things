require 'date'

class Item
  attr_accessor :publish_date, :author, :genre, :source, :label
  attr_reader :id, :archived

  def initialize(publish_date, archived)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    currently_year = DateTime.now.next_month.strftime('%Y').to_i
    publish_year = @publish_date.to_i
    (currently_year - publish_year) >= 10
  end
end
