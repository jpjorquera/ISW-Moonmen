class AddDataToordenCompras < ActiveRecord::Migration[5.2]
  def change
    add_column :orden_compras, :nombre_item, :string
    add_column :orden_compras, :sku, :string
    add_column :orden_compras, :cantidad, :integer
    add_column :orden_compras, :precio, :integer
  end
end
