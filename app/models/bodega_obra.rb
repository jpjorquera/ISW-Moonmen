class BodegaObra < ApplicationRecord
  has_one :bodeguero_obra
  has_many :inventario_obras
end
