class Cratures < ActiveRecord::Migration[5.0]
  def change
    create_table :creatures do |c|
      c.string :name
      c.string :epithet
      c.string :power
    end 
  end
end
