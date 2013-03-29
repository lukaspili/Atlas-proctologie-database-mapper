class Chapter
	include DataMapper::Resource

	storage_names[:default] = 'atlas_chapitres'
	property :id, Serial, :field => 'id_chapitres'

	property :chapitres, Text
  	property :id_fiches, Text
  	property :ordre, Integer
end