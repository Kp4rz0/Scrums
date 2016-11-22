class Usuario < ActiveRecord::Base
  belongs_to :carrera
  has_many :proyectos_usuarios

  validates :nombre, presence:true, length: {minimum:3, maximum: 50}
  validates :paterno, presence:true,length: {minimum:3, maximum: 50}
  validates :rut, presence:true, uniqueness:true, length: {minimum:9, maximum: 12}
  validates :fecha_nacimiento, presence:true


end
