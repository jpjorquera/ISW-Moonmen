class CreateSolicitud < ActiveRecord::Migration[5.2]
  def change
    create_table :solicituds do |t|
      t.references :bodega_obra, index: true
      t.references :bodega_central, index: true
      t.integer :estado, default: 0
    end
  end
end
