class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :shows

  def actors_list
    self.actors.collect do |actor|
      actor.full_name
    end
  end
end
