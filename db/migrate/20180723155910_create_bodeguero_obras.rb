class CreateBodegueroObras < ActiveRecord::Migration[5.2]
  def change
    create_table :bodeguero_obras do |t|

      t.timestamps
    end
  end
end
