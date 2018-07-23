class InventarioCentral < ApplicationRecord
  belongs_to :bodega_central
  belongs_to :material
end
