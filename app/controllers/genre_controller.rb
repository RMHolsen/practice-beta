class GenreController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update, :destroy]

    def index
        @genres = Genre.all
    end 

    def show
    end 

    def new
        @genre = Genre.new
    end 

    def create
        @genre = Genre.new
        if @genre.valid?
            @genre.save
        else
            render :new
        end 
    end 

    def edit
    end 
    
    def update
        if @genre = Genre.update(genre_params)
            redirect_to genre_path(@genre)
        else 
            render :edit
        end 
    end

    def destroy
    end 

    private

    def genre_params
        params.require(:genre).permit(:name)
    end 

    def set_genre
        @genre = Genre.find(params[:id])
    end
end 