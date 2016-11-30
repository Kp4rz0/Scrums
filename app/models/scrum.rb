class Scrum < ActiveRecord::Base
  belongs_to :estados_scrum
  belongs_to :proyecto
  has_many :puntos
end
