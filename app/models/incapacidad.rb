class Incapacidad < ActiveRecord::Base
  belongs_to :funcionario

   validates :funcionario_id, :presence => true 
   validates :fechainicio, :presence => true 
   validates :fechaterminacion, :presence => true 
   validates :totaldias, :presence => true 
   validates :diasacobrar, :presence => true 
   validates :prorroga, :presence => true 
   validates :numeroinpacacidad, :presence => true 
   validates :origendelaincapacidad, :presence => true 
   
end
