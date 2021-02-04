class Artifacts < ActiveRecord::Migration[5.0]
  def change
    create_table :artifacts do |a|
      a.string :name
      a.string :creator 
      a.string :power 
    end 
  end
end
