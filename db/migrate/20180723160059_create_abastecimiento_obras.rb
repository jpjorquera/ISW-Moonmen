class CreateAbastecimientoObras < ActiveRecord::Migration[5.2]
  def change
    create_table :abastecimiento_obras do |t|

      t.timestamps
    end
  end
end
