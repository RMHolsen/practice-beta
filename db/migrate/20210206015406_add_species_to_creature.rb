class AddSpeciesToCreature < ActiveRecord::Migration[5.0]
  def change
    add_column :creatures, :species, :string
  end
end
