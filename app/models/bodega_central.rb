class BodegaCentral < ApplicationRecord
  has_many :bodeguero_obras
  has_one :bodeguero_central, -> { includes :user }
  has_many :inventario_centrals
  has_many :abastecimiento_centrals
  has_many :solicituds
end
