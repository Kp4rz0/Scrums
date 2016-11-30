class Punto < ActiveRecord::Base
  belongs_to :scrum
  belongs_to :nombres_punto
  has_many :puntos_respuestas
end
