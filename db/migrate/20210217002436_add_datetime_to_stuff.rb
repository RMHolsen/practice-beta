class AddDatetimeToStuff < ActiveRecord::Migration[5.0]
  def change
    add_column :artifacts, :updated_at, :datetime
    add_column :backgrounds, :updated_at, :datetime
    add_column :books, :updated_at, :datetime
    add_column :creatures, :updated_at, :datetime
    add_column :guilds, :updated_at, :datetime
    add_column :projects, :updated_at, :datetime
  end
end
