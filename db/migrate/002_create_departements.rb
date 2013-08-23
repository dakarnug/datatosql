class CreateDepartements < ActiveRecord::Migration

  def change
    create_table :departements do |t|
      t.string  :nom
      t.integer :region_id, null: false
    end

    add_index :departements, :region_id
  end

end
