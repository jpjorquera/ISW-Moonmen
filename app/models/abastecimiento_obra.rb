class AbastecimientoObra < ApplicationRecord
  belongs_to :bodega_obra
  belongs_to :proveedor
end
