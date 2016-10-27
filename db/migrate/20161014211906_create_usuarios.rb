class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :rut
      t.integer :tipo_usuario_id
      t.datetime :fecha_nacimiento
      t.integer :carrera_id
      t.integer :estado_usuario_id
      t.integer :activo
    end
  end
end
