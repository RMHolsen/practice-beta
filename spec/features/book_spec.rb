require 'rails_helper'

describe "book creation", type: :feature do 
  before do 
    visit new_book_path
    fill_in "title", with: "The Anglo-Saxon World"
    fill_in "author", with: "Nicholas J. Sparks"
    #select "tiny" from: "monster_size"
    click_button "Add Book"
  end 

  let(:book) { Book.find_by(title: "The Anglo-Saxon World") }

  it 'creates a book' do 
    expect(book).to_not be_nil
  end 

  it 'redirects to the new book page' do 
    expect(current_path).to eq(book_path(book))
  end 

  it 'displays the book title' do 
    within "h2" do 
      expect(page).to have_content(book.title)
      expect(page).to have_content(book.author)
    end 
  end 
end 