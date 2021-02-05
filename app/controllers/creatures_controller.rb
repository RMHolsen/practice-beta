class CreaturesController < ApplicationController
   
    def index
        #Renders the index, usually everything in a list linking to the show page
        @creatures = Creature.all 
    end 

    def show 
        #Renders the individual page
        @creature = Creature.find(params[:id])
    end 

    def new
        #Renders the 'new' form
        @creature = Creature.new
        #This code is less necessary in form_tag construction but necessary in form_for construction
    end 

    def create
        #Inserts the data collected by the 'new' form into the database
        @creature = Creature.create(name: params[:name], epithet: params[:epithet], power: params[:power])
        #You can also use Creature.new but then you have to remember to save it

        redirect_to creature_path(@creature)
        #Can also use: @creature = Creature.create(creature_params)
        #Where creature_params is a private method for strong params, and also enables more efficient coding
        #Pairs well with form_for method
    end 

    def edit
        #Renders the 'edit' form
        @creature = Creature.find(params[:id])
    end 

    def update
        #Handles the data collected by the 'edit' form and updates the record in the database
        @creature = Creature.update(name: params[:name], epithet: params[:epithet], power: params[:power])
        #Or @creature.update(creature_params)
    end

    def destroy
        Creature.find(params[:id]).destroy
        redirect_to creatures_path
    end 

    private

    def creature_params
        params.require(:creature).permit(:name, :epithet, :power)
        #Or 
        #def creature_params(*args)
        #params.require(:creature).permit(*args)
        #Still don't know why this didn't work in the lab
        #end
    end 
end 