class CreateBodegaCentrals < ActiveRecord::Migration[5.2]
  def change
    create_table :bodega_centrals do |t|

      t.timestamps
    end
  end
end
