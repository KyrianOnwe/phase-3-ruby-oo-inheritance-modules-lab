require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramble'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  include Memorable::InstanceMethods

  # def initialize
  #   @@songs << self
  # end

  extend Findable::ClassMethods

  def self.all
    @@songs
  end
  
  extend Memorable::ClassMethods

 def artist=(artist)
    @artist = artist
  end

  include Paramble::InstanceMethods
end
