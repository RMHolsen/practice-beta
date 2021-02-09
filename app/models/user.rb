class User < ActiveRecord::Base
    has_secure_password

    validates :name, presence: true 
    validates :email, confirmation: true
    validates :email_confirmation, presence: true 

    has_many :projects 
end 