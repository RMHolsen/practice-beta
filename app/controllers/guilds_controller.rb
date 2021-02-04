class GuildsController < ApplicationController
    def index
        @guilds = Guild.all
    end

    def show
    end 

    def new
        @guild = Guild.new
    end 

    def create
        @guild = Guild.new(guild_params)
        if @guild.valid?
            @guild.save
            redirect_to guild_path(@guild)
        else 
            render :new
            #Render the page rather than redirect because a render keeps the instance whereas a redirect will wipe the instance
            #Thereby wiping all the error messages.
            #At this point also the 'new' form is different because we want to populate the fields with what's already in the instance
            #But this does NOT mean it's been saved to the database! only the instance.
        end 
    end 

    def edit
    end 

    def update
        if @guild = Guild.update(guild_params)
            redirect_to guild_path (@guild)
        else 
            render :edit 
        end 
        #Render the edit page rather than redirect because a render keeps the instance, redirect wipes the instance
        #And therefore all error messages
        #At this point also the 'new' form is different because we want to populate the fields with what's already in the instance
        #But this does NOT mean it's been saved to the database! only the instance.
    end

    private
    
    def guild_params
        params.require(:guild).permit(:name, :purpose, :membership)
    end 

    def set_guild
        @guild = Guild.find(params[:id])
    end 
end 