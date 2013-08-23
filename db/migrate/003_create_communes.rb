class CreateCommunes < ActiveRecord::Migration

  def change
    create_table :communes do |t|
      t.string  :nom
      t.integer :departement_id, null: false
    end

    add_index :communes, :departement_id
  end

end
