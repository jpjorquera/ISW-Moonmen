class CreateRegistroMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :registro_materials do |t|
      t.string :nombre_item
      t.string :sku
      t.string :descripcion
      t.integer :cantidad
      t.integer :precio
      t.references :orden_compra, foreign_key: true

      t.timestamps
    end
  end
end
