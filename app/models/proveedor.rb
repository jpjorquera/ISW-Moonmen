class Proveedor < ApplicationRecord
  belongs_to :bodeguero_central
  belongs_to :encargado_compra
end
