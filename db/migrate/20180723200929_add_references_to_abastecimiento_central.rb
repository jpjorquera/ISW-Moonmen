class AddReferencesToAbastecimientoCentral < ActiveRecord::Migration[5.2]
  def change
    add_reference :abastecimiento_centrals, :proveedor
    add_reference :abastecimiento_centrals, :bodega_central
  end
end
