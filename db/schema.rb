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

ActiveRecord::Schema.define(version: 20161130011244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carreras", force: :cascade do |t|
    t.integer "departamento_id"
    t.string  "tag"
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "departamentos", force: :cascade do |t|
    t.integer "facultade_id"
    t.string  "tag"
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "estados_proyectos", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "estados_scrums", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "estados_usuarios", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "facultades", force: :cascade do |t|
    t.integer "institucione_id"
    t.string  "tag"
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "instituciones", force: :cascade do |t|
    t.string  "tag"
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "nombres_puntos", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string   "titulo"
    t.integer  "tipo_id"
    t.text     "descripcion"
    t.datetime "inicio"
    t.integer  "estados_proyecto_id"
    t.datetime "termino"
    t.integer  "activo"
  end

  create_table "proyectos_usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id",         null: false
    t.integer "proyecto_id",        null: false
    t.integer "activo"
    t.integer "tipos_relacione_id"
  end

  create_table "puntos", force: :cascade do |t|
    t.integer "scrum_id"
    t.integer "nombres_punto_id"
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "puntos_respuestas", force: :cascade do |t|
    t.integer "punto_id"
    t.string  "texto_citado"
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "scrums", force: :cascade do |t|
    t.datetime "fecha_creacion"
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "proyecto_id"
    t.datetime "fecha_envio"
    t.datetime "fecha_visto"
    t.datetime "fecha_revision"
    t.integer  "estados_scrum_id"
    t.integer  "activo"
  end

  create_table "tipos_relaciones", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "tipos_usuarios", force: :cascade do |t|
    t.string  "descripcion"
    t.integer "activo"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "rut"
    t.integer  "tipos_usuario_id"
    t.datetime "fecha_nacimiento"
    t.integer  "carrera_id"
    t.integer  "estados_usuario_id"
    t.integer  "activo"
    t.string   "email"
    t.string   "contrasena"
    t.string   "password_digest"
  end

end
