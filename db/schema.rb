# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_13_210227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abastecimiento_centrals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proveedor_id"
    t.bigint "bodega_central_id"
    t.index ["bodega_central_id"], name: "index_abastecimiento_centrals_on_bodega_central_id"
    t.index ["proveedor_id"], name: "index_abastecimiento_centrals_on_proveedor_id"
  end

  create_table "abastecimiento_obras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proveedor_id"
    t.bigint "bodega_obra_id"
    t.index ["bodega_obra_id"], name: "index_abastecimiento_obras_on_bodega_obra_id"
    t.index ["proveedor_id"], name: "index_abastecimiento_obras_on_proveedor_id"
  end

  create_table "bodega_centrals", force: :cascade do |t|
    t.string "localizacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bodega_obras", force: :cascade do |t|
    t.string "localizacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bodeguero_centrals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "bodega_central_id"
    t.bigint "encargado_compra_id"
    t.index ["bodega_central_id"], name: "index_bodeguero_centrals_on_bodega_central_id"
    t.index ["encargado_compra_id"], name: "index_bodeguero_centrals_on_encargado_compra_id"
    t.index ["user_id"], name: "index_bodeguero_centrals_on_user_id"
  end

  create_table "bodeguero_obras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "bodega_obra_id"
    t.bigint "bodeguero_central_id"
    t.index ["bodega_obra_id"], name: "index_bodeguero_obras_on_bodega_obra_id"
    t.index ["bodeguero_central_id"], name: "index_bodeguero_obras_on_bodeguero_central_id"
    t.index ["user_id"], name: "index_bodeguero_obras_on_user_id"
  end

  create_table "encargado_compras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_encargado_compras_on_user_id"
  end

  create_table "inventario_centrals", force: :cascade do |t|
    t.integer "stock_central"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "material_id"
    t.bigint "bodega_central_id"
    t.index ["bodega_central_id"], name: "index_inventario_centrals_on_bodega_central_id"
    t.index ["material_id"], name: "index_inventario_centrals_on_material_id"
  end

  create_table "inventario_obras", force: :cascade do |t|
    t.integer "stock_obra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "material_id"
    t.bigint "bodega_obra_id"
    t.index ["bodega_obra_id"], name: "index_inventario_obras_on_bodega_obra_id"
    t.index ["material_id"], name: "index_inventario_obras_on_material_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orden_compras", force: :cascade do |t|
    t.string "numero_orden"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proveedor_id"
    t.bigint "encargado_compra_id"
    t.index ["encargado_compra_id"], name: "index_orden_compras_on_encargado_compra_id"
    t.index ["proveedor_id"], name: "index_orden_compras_on_proveedor_id"
  end

  create_table "personal_obras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "bodeguero_obra_id"
    t.index ["bodeguero_obra_id"], name: "index_personal_obras_on_bodeguero_obra_id"
    t.index ["user_id"], name: "index_personal_obras_on_user_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bodeguero_central_id"
    t.bigint "encargado_compra_id"
    t.index ["bodeguero_central_id"], name: "index_proveedors_on_bodeguero_central_id"
    t.index ["encargado_compra_id"], name: "index_proveedors_on_encargado_compra_id"
  end

  create_table "solicitud_materials", force: :cascade do |t|
    t.bigint "solicitud_id", null: false
    t.bigint "material_id", null: false
    t.integer "cantidad", default: 1, null: false
    t.index ["material_id"], name: "index_solicitud_materials_on_material_id"
    t.index ["solicitud_id"], name: "index_solicitud_materials_on_solicitud_id"
  end

  create_table "solicituds", force: :cascade do |t|
    t.bigint "bodega_obra_id"
    t.bigint "bodega_central_id"
    t.integer "estado", default: 0
    t.index ["bodega_central_id"], name: "index_solicituds_on_bodega_central_id"
    t.index ["bodega_obra_id"], name: "index_solicituds_on_bodega_obra_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "puesto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
