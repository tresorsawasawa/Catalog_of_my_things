require 'date'
require_relative './item'

class Movie < Item
  attr_accessor :silet

  def initialize(silet, publish_date)
    super(publish_date, archived)
    @silet = silet
  end

  def can_be_archived?
    return true if super && @silet
  end

  private :can_be_archived?
end
