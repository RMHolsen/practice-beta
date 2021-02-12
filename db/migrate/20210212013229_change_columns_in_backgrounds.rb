class ChangeColumnsInBackgrounds < ActiveRecord::Migration[5.0]
  def change
    remove_column :backgrounds, :project
    add_column :backgrounds, :project_id, :integer 
  end
end
