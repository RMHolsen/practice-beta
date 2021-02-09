class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.text :summary
      t.string :genre
      t.integer :word_count
      t.integer :user_id 
    end
  end
end
