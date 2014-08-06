class Accidente < ActiveRecord::Base
  belongs_to :tipodoc
  belongs_to :departamento
  belongs_to :municipio
  belongs_to :departamento
  belongs_to :municipio
  belongs_to :funcionario
  belongs_to :departamento
  belongs_to :municipio
  belongs_to :tipodoc
end
