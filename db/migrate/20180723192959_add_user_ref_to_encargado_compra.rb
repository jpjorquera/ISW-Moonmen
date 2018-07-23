class AddUserRefToEncargadoCompra < ActiveRecord::Migration[5.2]
  def change
    add_reference :encargado_compras, :user
  end
end
