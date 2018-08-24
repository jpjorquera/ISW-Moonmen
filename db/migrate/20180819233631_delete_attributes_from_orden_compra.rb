class DeleteAttributesFromOrdenCompra < ActiveRecord::Migration[5.2]
  def change
    remove_column :orden_compras, :nombre_item
    remove_column :orden_compras, :sku
    remove_column :orden_compras, :cantidad
    remove_column :orden_compras, :precio
  end
end
