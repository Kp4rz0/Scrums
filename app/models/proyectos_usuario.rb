class ProyectosUsuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :proyecto
  belongs_to :tipos_relacione


end
