class CreateBodegueroCentrals < ActiveRecord::Migration[5.2]
  def change
    create_table :bodeguero_centrals do |t|

      t.timestamps
    end
  end
end
