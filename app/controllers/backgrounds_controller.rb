class BackgroundsController < ApplicationController
    before_action :set_background, only: [:show, :edit, :update]
    def index
        @backgrounds = Background.all
    end 

    def show
    end 

    def new
        @background = Background.new
    end 

    def create
        @background = Background.new(bg_params)
        if @background.valid?
            @background.save 
            redirect_to background_path(@background)
        else
            render :new
        end 
    end 

    def edit
    end 

    def update
        if @background = Background.update(bg_params)
            redirect_to background_path(@background)
        else 
            render :edit
        end 
    end 

    private

    def bg_params
        params.require(:background).permit(:genre, :support_type, :file_location, :project_id)
    end 

    def set_background
        @background = Background.find(params[:id])
    end 

end 