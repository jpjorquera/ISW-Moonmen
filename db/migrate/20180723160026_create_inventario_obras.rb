class CreateInventarioObras < ActiveRecord::Migration[5.2]
  def change
    create_table :inventario_obras do |t|
      t.integer "stock_obra"
      t.timestamps
    end
  end
end
