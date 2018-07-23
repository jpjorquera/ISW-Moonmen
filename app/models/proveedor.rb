class Proveedor < ApplicationRecord
  belongs_to :bodeguero_central
  belongs_to :encargado_compra
  has_many :abastecimiento_obras
end
