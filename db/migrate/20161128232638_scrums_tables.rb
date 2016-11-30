class ScrumsTables < ActiveRecord::Migration[5.0]
  def change
    create_table :scrums do |t|
      t.datetime :fecha_creacion
      t.string :nombre
      t.string :descripcion
      t.integer :proyecto_id
      t.datetime :fecha_envio
      t.datetime :fecha_visto
      t.datetime :fecha_revision
      t.integer :estados_scrum_id
      t.integer :activo
    end
    create_table :estados_escrums do |t|
      t.string :descripcion
      t.integer :activo
    end
    create_table :puntos do |t|
      t.integer :scrum_id
      t.integer :nombres_punto_id
      t.string :descripcion
      t.integer :activo
    end
    create_table :nombres_puntos do |t|
      t.string :descripcion
      t.integer :activo
    end
    create_table :puntos_respuestas do |t|
      t.integer :punto_id
      t.string :texto_citado
      t.string :descripcion
      t.integer :activo
    end
  end
end
