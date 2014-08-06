class Enfermedad < ActiveRecord::Base
  belongs_to :centro
  belongs_to :tipodoc
  belongs_to :funcionario

    validates :funcionario_id, :presence => true 
    validates :descripcion, :presence => true 
    validates :fecha, :presence => true 
    validates :codigodediagnostico, :presence => true 
   
end
