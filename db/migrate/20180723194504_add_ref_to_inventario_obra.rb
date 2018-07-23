class AddRefToInventarioObra < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventario_obras, :material
    add_reference :inventario_obras, :bodega_obra
  end
end
