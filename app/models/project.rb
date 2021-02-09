class Project < ActiveRecord::Base
    validates :name, presence: true
    validates :type, inclusion: { in: %w(novel novella short flash concept) }
    #message: "%{value} is not a valid type of project" }
    belongs_to :user
    belongs_to :genre

    def genre_name=(name)
      self.genre = Genre.find_or_create_by(name: name)
    end
    
    def genre_name
      self.genre ? self.genre.name : nil
    end
end 