class CreateSolicitudMaterial < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitud_materials do |t|
      t.references :solicitud, null: false, index: true
      t.references :material, null: false, index: true
      t.integer :cantidad, null: false, default: 1
    end
  end
end
