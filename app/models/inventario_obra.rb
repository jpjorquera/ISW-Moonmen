class InventarioObra < ApplicationRecord
  belongs_to :material
  belongs_to :bodega_obra
end
