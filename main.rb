# source : http://senegalouvert.org/data/Decoupage-Administratif
require './models.rb'
require 'csv'

## initialisation de la base de données

CSV.foreach('Decoupage-Administratif-Senegal.csv') do |row|
  region                 = row[0].nil? ? nil : Region.find_or_create_by(nom: row[0])
  departement            = row[1].nil? ? nil : Departement.find_or_create_by(nom: row[1], region: region)
  commune                = row[2].nil? ? nil : Commune.find_or_create_by(nom: row[2], departement: departement)
  arrondissement         = row[3].nil? ? nil : Arrondissement.find_or_create_by(nom: row[3], departement_id: departement.try(:id), commune_id: commune.try(:id))
  commune_arrondissement = row[4].nil? ? nil : CommuneArrondissement.find_or_create_by(nom: row[4], departement_id: departement.try(:id), commune_id: commune.try(:id), arrondissement_id: arrondissement.try(:id))
  communaute_rurale      = row[5].nil? ? nil : CommunauteRurale.find_or_create_by(nom: row[5], departement_id: departement.try(:id), commune_id: commune.try(:id), arrondissement_id: arrondissement.try(:id), commune_arrondissement_id: commune_arrondissement.try(:id))
end