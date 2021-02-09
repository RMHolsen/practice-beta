require 'rails_helper'

describe User do
    let (:attributes) do 
        {
            name: "Dade Murphy",
            email: "crash_override@securemail.com",
            email_confirmation: "crash_override@securemail.com",
            password: "arfarfgotcha"
        }
    end 

    let (:missing_name) { attributes.except(:name) }
    let (:missing_email) { attributes.except(:email) }
    let (:missing_confirmation) { attributes.except(:email_confirmation) }
    let (:invalid_confirmation) { attributes.merge(email_confirmation: "acidburn@securemail.com") }

    it 'is considered valid' do 
        expect(User.new(attributes)).to be_valid
    end 

    it 'is invalid without a name' do 
        expect(User.new(missing_name)).not_to be_valid
    end 

    it 'is invalid without an email' do 
        expect(User.new(missing_email)).not_to be_valid 
    end 

    it 'is invalid without matching email confirmation' do 
        expect(User.new(invalid_confirmation)).not_to be_valid
    end 

    it 'is invalid with missing email confirmation' do 
        expect(User.new(missing_confirmation)).not_to be_valid
    end 

end 