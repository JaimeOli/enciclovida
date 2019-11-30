class Plantid::PlantaBibliografia < Plantidabs
  self.table_name = "#{CONFIG.bases.plantid}.plantas_bibliografias"

  belongs_to :bibliografia, class_name: 'Plantid::BibliografiaP'
  belongs_to :planta

end