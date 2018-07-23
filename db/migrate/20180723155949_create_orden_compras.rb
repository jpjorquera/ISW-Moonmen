class CreateOrdenCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :orden_compras do |t|
      t.string "numero_orden"
      t.timestamps
    end
  end
end
