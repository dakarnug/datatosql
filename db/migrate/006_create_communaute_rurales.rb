class CreateCommunauteRurales < ActiveRecord::Migration

  def change
    create_table :communaute_rurales do |t|
      t.string  :nom
      t.integer :departement_id
      t.integer :commune_id
      t.integer :arrondissement_id
      t.integer :commune_arrondissement_id
    end

    add_index :communaute_rurales, :departement_id
    add_index :communaute_rurales, :commune_id
    add_index :communaute_rurales, :arrondissement_id
    add_index :communaute_rurales, :commune_arrondissement_id
  end

end
