class Creature < ActiveRecord::Base
validates :name, presence: true

    def to_s 
        self.name + " the " + self.epithet
    end 
end 