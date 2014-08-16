class Accident < ActiveRecord::Base
  belongs_to :tipodoc
  validate :tipodoc_id, :tipodocafectedid, presence: true
end
