class CreateArrondissements < ActiveRecord::Migration

  def change
    create_table :arrondissements do |t|
      t.string  :nom
      t.integer :departement_id
      t.integer :commune_id
    end

    add_index :arrondissements, :departement_id
    add_index :arrondissements, :commune_id
  end

end
