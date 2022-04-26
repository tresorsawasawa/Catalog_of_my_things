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

<<<<<<< HEAD
  private

=======
>>>>>>> a3d35f3c44076b658a5cc525e0e34b1608d34038
  def can_be_archived?
    now = Date.today.year
    published = publish_date.year
    (now - published) >= 10
  end
end