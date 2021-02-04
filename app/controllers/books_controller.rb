class BooksController < ApplicationController
    def index
        @books = Book.all
    end 

    def show
        @book = Book.find(params[:id])
    end 

    def new
        #Renders the 'new' form
        @book = Book.new
    end 

    def create
        #Inserts the data collected by the 'new' form into the database
        @book = Book.new
        @book.title = params[:title]
        @book.author = params[:author]
        @book.summary = params[:summary]
        @book.edition = params[:edition]
        @book.press = params[:press]
        @book.save 
        #The extremely long way, can also use @book = Book.create([arguments go here]) 
        #See Creatures controller for details

        redirect_to book_path(@book)
    end 

    def edit
        #Renders the 'edit' form
        @book = Book.find(params[:id])
    end 

    def update 
        #Handles the data collected by the 'edit' form and updates the record
        @book = Book.find(params[:id])
        @book.title = params[:title] 
        @book.author = params[:author] 
        @book.summary = params[:summary]
        @book.edition = params[:edition] 
        @book.press = params[:press])
        @book.save
        #Again, this is the REALLY long way around
        #See Creatures controller

        redirect_to book_path(@book)
    end 
end 