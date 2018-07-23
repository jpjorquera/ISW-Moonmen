class CreateAbastecimientoCentrals < ActiveRecord::Migration[5.2]
  def change
    create_table :abastecimiento_centrals do |t|

      t.timestamps
    end
  end
end
