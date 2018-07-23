class AddRefToBodegueroCentral < ActiveRecord::Migration[5.2]
  def change
    add_reference :bodeguero_centrals, :user
    add_reference :bodeguero_centrals, :bodega_central
    add_reference :bodeguero_centrals, :encargado_compra
  end
end
