class Guild < ActiveRecord::Base #or ApplicationRecord
    validates :name, presence: true, format: { with: /(The)\s[a-zA-z]+\s(Guild)/ } 
    #Validates name format only if it matches The [single word] Guild
    #validates :name, presence: true, length: { minimum: 10 }
    validates :purpose, presence: true
    validates :membership, numericality: { only_integer: true, message: "Membership must be an integer."} 
    #Only integers, no floats.
    #REGEX: format { without: /\D/, message: "Must be an integer." }
end 