class Creature < ActiveRecord::Base
validates :name, :epithet, presence: true
validates :power, length: { minimum: 6 }
#Must be long enough to really describe the power: telepathy is 9 characters
validates :species, length: { maximum: 20 }
#Must be short, we're not looking for detail, 'human' is a species
#It's prejudiced against Raxacoricofallopatorians but oh well.

    def to_s 
        self.name + " the " + self.epithet
    end 
end 