class Logueo < ActiveRecord::Base
 # Validar que los atributos sean obligatorios
 validates :usuario, :presence => true	
 validates :clave, :presence => true	
 
end
