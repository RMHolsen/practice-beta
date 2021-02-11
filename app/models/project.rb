class Project < ActiveRecord::Base
    validates :name, presence: true
    #validates :type, inclusion: { in: %w(novel novella short flash concept), message: "%{value} is not a valid type of project" }
    #not sure how to do a message other than flash?
    belongs_to :user
    belongs_to :genre

    def genre_name=(name)
      self.genre = Genre.find_or_create_by(name: name)
    end
    
    def genre_name
      self.genre ? self.genre.name : nil
      #Ternary operator formats as
      #IF THIS THING ? THEN THIS : OR THIS
      #I know it's annoying because you haven't done it much before but there's your key.
    end

     def display_count
       self.word_count.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
     end 
    #Figure this out if you can ever figure out how to convert an integer into comma format
end 