class Book < ActiveRecord::Base 
validates :title, :author, presence: true
validates :summary, length: {minimum: 500}, allow_blank: true 

end 