class Carrera < ActiveRecord::Base
  belongs_to :departamento
  has_many :usuarios


end
