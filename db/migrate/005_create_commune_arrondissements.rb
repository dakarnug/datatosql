class CreateCommuneArrondissements < ActiveRecord::Migration

  def change
    create_table :commune_arrondissements do |t|
      t.string  :nom
      t.integer :departement_id
      t.integer :commune_id
      t.integer :arrondissement_id
    end

    add_index :commune_arrondissements, :departement_id
    add_index :commune_arrondissements, :commune_id
    add_index :commune_arrondissements, :arrondissement_id
  end

end
