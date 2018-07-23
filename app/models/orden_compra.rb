class OrdenCompra < ApplicationRecord
  belongs_to :proveedor
  belongs_to :encargado_compra
end
