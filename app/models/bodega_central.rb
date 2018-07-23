class BodegaCentral < ApplicationRecord
  has_many :bodeguero_obras
  has_one :bodeguero_central
  has_many :inventario_centrals
  has_many :abastecimiento_centrals
end
