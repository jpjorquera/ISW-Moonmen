class AddRefToProveedor < ActiveRecord::Migration[5.2]
  def change
    add_reference :proveedors, :bodeguero_central
    add_reference :proveedors, :encargado_compra
  end
end
