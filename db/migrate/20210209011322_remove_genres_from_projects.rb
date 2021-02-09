class RemoveGenresFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :genre 
  end
end
