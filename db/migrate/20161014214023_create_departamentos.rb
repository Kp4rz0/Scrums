class CreateDepartamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :departamentos do |t|
      t.integer :facultades_id
      t.string :tag
      t.string :descripcion
      t.integer :activo
    end
  end
end
