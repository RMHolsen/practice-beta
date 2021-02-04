class Books < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |b|
      b.string :title
      b.string :author 
    end 
  end
end
