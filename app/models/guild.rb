class Guild < ActiveRecord::Base #or ApplicationRecord
    validates :name, :purpose, presence: true 
    validates :membership, format { without: /\D/, message: "Must be an integer." }
    #validates membership as an integer format, \D = any non-digit character including spaces
end 