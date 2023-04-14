class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :shows, through: :characters

  def actors_list
    actors = []
    self.characters.each { |char| actors << char.actor.full_name }
    actors
  end
end