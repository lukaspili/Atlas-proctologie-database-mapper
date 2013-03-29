module ApplicationHelper
	def expand ids, tabs
		text = ""
		table = ids.split(';').each {|n|
			text += "<integer>#{n}</integer>\n"
			tabs.times {|n| text += "\t"}
		} 

		return raw text
	end
end
