class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	DataMapper::Logger.new($stdout, :debug)
  	DataMapper.setup(:default, 'mysql://root@localhost/atlasproctologie')
  	DataMapper.finalize

  	# chapter = Chapter.create(
  	# 	:chapitres => "Fuck",
  	# 	:id_fiches => "Fuck 2",
  	# 	:ordre => 2
  	# );

  	# chapter.save

  	@chapters = Chapter.all
  	@cards = Card.all
    @popups = Popup.all
    @clinical_signs = ClinicalSign.all
  end
end
