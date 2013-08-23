require './db/connect_db.rb'

class Region < ActiveRecord::Base
  has_many :departements
end

class Departement < ActiveRecord::Base
  belongs_to :region

  has_many :communes
end

class Commune < ActiveRecord::Base
  belongs_to :departement

  has_many :arrondissements
end

class Arrondissement < ActiveRecord::Base
  belongs_to :departement
  belongs_to :commune

  has_many :commune_arrondissements
end

class CommuneArrondissement < ActiveRecord::Base
  belongs_to :departement
  belongs_to :commune
  belongs_to :arrondissement

  has_many :communaute_rurales
end

class CommunauteRurale < ActiveRecord::Base
  belongs_to :departement
  belongs_to :commune
  belongs_to :arrondissement
  belongs_to :commune_arrondissement
end