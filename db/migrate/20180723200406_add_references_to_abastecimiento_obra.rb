class AddReferencesToAbastecimientoObra < ActiveRecord::Migration[5.2]
  def change
    add_reference :abastecimiento_obras, :proveedor
    add_reference :abastecimiento_obras, :bodega_obra
  end
end
