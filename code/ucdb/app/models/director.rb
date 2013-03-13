require 'cgi'
class Director < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :movies

  def to_param
    "#{self.id}-#{CGI.escape(self.name.downcase)}"
  end

  # has_many :movies, :class_name => "Movie", :foreign_key => 'director_id'

  # def movies
  #   return Movie.where(:director_id => self.id)
  # end

end
