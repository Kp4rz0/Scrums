class CreateProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :proyectos do |t|
      t.string :titulo
      t.integer :tipo_id
      t.text :descripcion
      t.datetime :inicio
      t.integer :estado_proyecto_id
      t.datetime :termino
      t.integer :activo
    end
  end
end
