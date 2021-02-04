class Artifact < ActiveRecord::Base 
validates :name, presence: true, length: { minimum: 4 } #minimum, maximum, in #..#, is

    #include ActiveModel::Validations
    #validates_with NameValidator
    #see file tree for the rest/sample code, this is another way to do it
    #Probably the above method is easier though.
end 