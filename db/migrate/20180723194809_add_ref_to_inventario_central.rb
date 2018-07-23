class AddRefToInventarioCentral < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventario_centrals, :material
    add_reference :inventario_centrals, :bodega_central
  end
end
