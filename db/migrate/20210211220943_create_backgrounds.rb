class CreateBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :backgrounds do |t|
      t.string :project
      t.string :genre 
      t.string :support_type
      t.string :file_location 
    end
  end
end
