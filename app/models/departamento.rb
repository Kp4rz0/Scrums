class Departamento < ActiveRecord::Base
  has_many :carreras
  belongs_to :facultade


end
