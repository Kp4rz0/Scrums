class Facultade < ActiveRecord::Base
  belongs_to :institucione
  has_many :departamentos


end
