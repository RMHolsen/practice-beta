require 'rails_helper'

describe BooksController, type: :controller do 

    let (:attributes) do 
        {
          title: "The Anglo-Saxon World",
          author: "Nicholas J. Sparks"
        }
    end 

    it 'renders the show template' do
        book = Book.create!(attributes)
        get :show, params: { id: book.id }
        expect(response).to render_template(:show)
    end 
    ### DEPRECATION WARNING
    # WAS
    # get :show, { id: 1 }, nil, { notice: "This is a flash message" }
    # SHOULD BE
    # get :show, params: { id: 1 }, flash: { notice: "This is a flash message" }

    describe "creation" do 
        let(:book) { Book.find_by(title: "The Anglo-Saxon World") }

        before { post :create, params: { title: "The Anglo-Saxon World", author: "Nicholas J. Sparks" } }

        it "creates a new book" do 
            expect(book).to_not be_nil
        end
        
        it "redirects to the book's show page" do 
            expect(response).to redirect_to(book_path(book))
        end 
    end 

    # describe "creating an invalid author" do
    #     let(:bad_attributes) { { email: jeff.email } }
    #     let(:jeff_bad) { Author.create(bad_attributes) }
    
    #     it "does not create" do
    #       expect(jeff_bad).to be_new_record
    #     end
    
    #     it "has an error for missing name" do
    #       expect(jeff_bad.errors[:name]).to_not be_empty
    #     end
    
    #     it "has an error for non-unique email" do
    #       expect(jeff_bad.errors[:email]).to_not be_empty
    #     end
    
    #     it "renders the form again" do
    #       post :create, params: bad_attributes
    #       expect(response).to render_template(:new)
    #     end
    # end 
    
end 