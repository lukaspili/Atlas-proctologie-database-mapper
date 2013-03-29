class Popup
	include DataMapper::Resource

	storage_names[:default] = 'atlas_popups'
	property :id, Serial, :field => 'id_popups'

	property :titre, Text
  	property :legende, Text
  	property :source, Text
  	property :id_fiches, Text
end