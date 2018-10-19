class Geoforma < Ficha

	self.table_name = "#{CONFIG.bases.fichasespecies}.geoforma"
	self.primary_key = 'IdGeoforma'

	has_many :habitat, class_name: 'Habitat'

end