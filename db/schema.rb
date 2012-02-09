# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120209043214) do

  create_table "marcas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rangos", :force => true do |t|
    t.integer  "tipo_vehiculo_id"
    t.decimal  "monto_desde"
    t.decimal  "monto_hasta"
    t.decimal  "tasa"
    t.decimal  "danos"
    t.decimal  "robo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tipo_vehiculos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vehiculos", :force => true do |t|
    t.integer  "tipo_vehiculo_id"
    t.integer  "marca_id"
    t.string   "placa"
    t.integer  "modelo"
    t.decimal  "valor_comercial"
    t.decimal  "valor_prima"
    t.decimal  "tasa"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
