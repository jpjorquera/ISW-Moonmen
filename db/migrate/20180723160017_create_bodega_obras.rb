class CreateBodegaObras < ActiveRecord::Migration[5.2]
  def change
    create_table :bodega_obras do |t|

      t.timestamps
    end
  end
end
