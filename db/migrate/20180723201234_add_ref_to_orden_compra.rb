class AddRefToOrdenCompra < ActiveRecord::Migration[5.2]
  def change
    add_reference :orden_compras, :proveedor
    add_reference :orden_compras, :encargado_compra
  end
end
