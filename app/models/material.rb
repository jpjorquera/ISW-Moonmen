class Material < ApplicationRecord
  has_many :inventario_obras
  has_many :inventario_centrals
  has_many :solicitud_materials
  has_many :solicituds, through: :solicitud_materials
  accepts_nested_attributes_for :solicitud_materials
end
