class AddColumnsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :summary, :text
    add_column :books, :edition, :string
    add_column :books, :press, :string
    add_column :books, :own, :boolean
  end
end
