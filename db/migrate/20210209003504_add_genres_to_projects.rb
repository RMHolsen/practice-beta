class AddGenresToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :genre_id, :integer
  end
end
