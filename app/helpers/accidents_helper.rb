module AccidentsHelper
	def nombretipodoc(id)
		Tipodoc.where(:id => id).pluck(:nombre).first
	end	
end
