require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods


  attr_accessor :name
  attr_reader :artist

  @@all = []

  # def initialize
  #     self.class.all << self
  # end

  # REFACTORED INTO findable MODULE.
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@all
  end


  def artist=(artist)
    @artist = artist
  end

  #REFACTORED INTO paramable.rb
#   def to_param
#     name.downcase.gsub(' ', '-')
#   end


end
