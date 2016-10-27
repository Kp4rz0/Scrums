class CreateCarreras < ActiveRecord::Migration[5.0]
  def change
    create_table :carreras do |t|
      t.integer :departamentos_id
      t.string :tag
      t.string :descripcion
      t.integer :activo
    end
  end
end
