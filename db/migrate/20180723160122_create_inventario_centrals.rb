class CreateInventarioCentrals < ActiveRecord::Migration[5.2]
  def change
    create_table :inventario_centrals do |t|

      t.timestamps
    end
  end
end
