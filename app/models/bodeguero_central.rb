class BodegueroCentral < ApplicationRecord
  has_many :bodeguero_obras
  belongs_to :user
  belongs_to :encargado_compra
  belongs_to :bodega_central
  has_many :proveedors
end
