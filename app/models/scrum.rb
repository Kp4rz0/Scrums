class Scrum < ActiveRecord::Base
  belongs_to :estados_scrum
  belongs_to :proyecto
  has_many :puntos
accepts_nested_attributes_for :puntos
end
