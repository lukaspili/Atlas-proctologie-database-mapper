class Card
	include DataMapper::Resource

	storage_names[:default] = 'atlas_fiches'
	property :id, Serial, :field => 'id_fiches'

	property :titre, Text
  	property :texte, Text
  	property :chapitres, Text
  	property :signes_cliniques, Text
  	property :diagnostic_differentiels, Text
  	property :en_savoir_plus, Text
  	property :popups, Text
end