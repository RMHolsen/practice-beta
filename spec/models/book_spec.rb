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
      author: "Nicholas J. Higham",
      summary: "The definitive introduction to the Anglo-Saxon world, enhanced with a rich array of photographs, maps, genealogies, and other illustrations. N.J. Higham and M.J.Ryan reexamine Anglo-Saxon England in light of the new research in disciplines as wide ranging as historical genetics, paleobotany, archaeology, literary studies, art history, and numismatics. Higham and Ryan reveal the richly textured tapestry woven between the last days of the Roman Empire and the Norman Conquest of England. Contains many pages and many words, that should be a long enough summary."
    }
  end 

  let(:missing_summary) { attributes.except(:summary) }

  it 'is considered valid' do
    expect(Book.new(attributes)).to be_valid
  end

  it 'is considered valid without a summary' do 
    expect(Book.new(missing_summary)).to be_valid
  end 


  let(:missing_title) { attributes.except(:title)}
  let(:missing_author) { attributes.except(:author)}
  let (:invalid_summary) { attributes.merge(summary: "This summary is way too short.")}

  it 'is invalid without a title' do
    expect(Book.new(missing_title)).not_to be_valid
  end 

  it 'is invalid without an author' do
    expect(Book.new(missing_author)).not_to be_valid
  end 

   it 'is invalid with a summary that is too short' do
     expect(Book.new(invalid_summary)).not_to be_valid
   end 
end