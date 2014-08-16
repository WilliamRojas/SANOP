module AccidentesHelper
	def nombretipodoc(id)
		Tipodoc.where(:id => id).pluck(:nombre).first
	end
	def mostrarmun(id)
		Municipio.where(:id => id).pluck(:nombre).first
	end	
	def mostrardep(id)
		Departamento.where(:id => id).pluck(:nombre).first
	end	
end
