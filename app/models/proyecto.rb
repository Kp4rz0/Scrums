class Proyecto < ActiveRecord::Base
  has_many :proyectos_usuarios
  belongs_to :estados_proyecto
  has_many :scrums
end
