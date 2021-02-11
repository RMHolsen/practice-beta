class RenameProjectsTypeToProjectsLength < ActiveRecord::Migration[5.0]
  def change
    rename_column(:projects, :type, :length)
  end
end
