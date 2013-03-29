class ClinicalSign
	include DataMapper::Resource

	storage_names[:default] = 'atlas_signes_cliniques'
	property :id, Serial, :field => 'id_signes_cliniques'

	property :signes_cliniques, Text
  	property :id_fiches, Text
end