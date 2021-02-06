require 'rails_helper'

describe Creature do

    let (:attributes) do 
        {
            name: "Picard",
            epithet: "Clever",
            power: "wisdom and curiosity",
            species: "human"
        }
    end 

    let(:missing_name) { attributes.except(:name) }
    let(:missing_epithet) { attributes.except(:epithet) }
    let(:invalid_power) { attributes.merge(power: "fire") }
    let(:invalid_species) { attributes.merge(species: "Raxacoricofallopatorian") }

    it 'is invalid without a name' do
        expect(Creature.new(missing_name)).not_to be_valid
    end 

    it 'is invalid without an epithet' do
        expect(Creature.new(missing_epithet)).not_to be_valid
    end 

    it 'is invalid with too short of a power description' do 
        expect(Creature.new(invalid_power)).not_to be_valid
    end 

    it 'is invalid with too long of a species name' do 
        expect(Creature.new(invalid_species)).not_to be_valid
    end 
end 