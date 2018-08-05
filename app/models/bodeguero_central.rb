class BodegueroCentral < ApplicationRecord
  has_many :bodeguero_obras
  belongs_to :user, inverse_of: :bodeguero_centrals
  validates_presence_of :user
  belongs_to :encargado_compras
  belongs_to :bodega_central
  has_many :proveedors
end
