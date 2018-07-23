class CreateEncargadoCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :encargado_compras do |t|

      t.timestamps
    end
  end
end
