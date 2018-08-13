class Solicitud < ApplicationRecord
  enum estado: { pendiente: 0, en_camino: 1, entregada: 2 }
  belongs_to :bodega_obra
  belongs_to :bodega_central
  has_many :solicitud_materials
  has_many :materials, through: :solicitud_materials
end