require 'rails_helper'

describe Guild do
    let (:attributes) do 
        {
            name: "The Assassins Guild",
            purpose: "To assassinate people",
            membership: 27
        }

    end 

    let (:missing_name) { attributes.except(:name)}
    let (:missing_membership) { attributes.except(:membership)}
    let(:invalid_name) { attributes.merge(name: "Toast.") } 
    let(:invalid_membership) { attributes.merge(membership: "This is a string, not a number.")}


    it 'is considered valid' do
        expect(Guild.new(attributes)).to be_valid
    end 

    it 'is invalid without a name' do 
        expect(Guild.new(missing_name)).not_to be_valid
    end 

    it 'is invalid without a count of members' do 
        expect(Guild.new(missing_membership)).not_to be_valid
    end 

    it 'is invalid with an incorrectly formatted name' do
        expect(Guild.new(invalid_name)).not_to be_valid
    end 

    it 'is invalid with a membership that is not an integer' do
        expect(Guild.new(invalid_membership)).not_to be_valid
    end 
end 