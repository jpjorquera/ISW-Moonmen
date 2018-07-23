class BodegueroCentral < ApplicationRecord
  has_many :bodeguero_obras
  belongs_to :user
  belongs_to :encargado_compras
  belongs_to :bodega_central
end
