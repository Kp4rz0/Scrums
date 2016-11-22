class Proyectos_Usuario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :proyecto
  belongs_to :tipos_relacione_id


end
