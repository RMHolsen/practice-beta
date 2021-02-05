require 'rails_helper'

describe Book do
  #before(:each) do
    #@coupon = Coupon.create!(coupon_code: "FREESTUFF", store: "Chipotle")
  #end
  # Why is let better than before :each?
  # It's more fine-grained, which means you have better control over your data. It can be used in combination with before statements to set up your test data just right before the examples are run.
  
  let (:attributes) do 
    {
      title: "The Anglo-Saxon World",
      author: "Nicholas J. Sparks"
    }
  end 

  it 'is considered valid' do
    expect(Book.new(attributes)).to be_valid
  end

  let(:missing_title) { attributes.except(:title)}
  let(:missing_author) { attributes.except(:author)}
  #let (:invalid_title) { attributes.merge(title: "something invalid here")}
  #let(:invalid_author) { attributes.merge(author: "something invalid here")}

  it 'is invalid without a title' do
    expect(Book.new(missing_title)).not_to be_valid
  end 

  it 'is invalid without an author' do
    expect(Book.new(missing_author)).not_to be_valid
  end 

  # it 'is invalid with an incorrectly formatted title' do
  #   expect(Book.new(invalid_title)).not_to be_valid
  # end 

  # it 'is invalid with an incorrectly formatted author' do
  #   expect(Book.new(invalid_author)).not_to be_valid
  # end 
end