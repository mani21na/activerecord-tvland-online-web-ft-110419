class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.characters.collect do |c|
      c.actors.name
    end 
  end 
end