class CreateFacultades < ActiveRecord::Migration[5.0]
  def change
    create_table :facultades do |t|
      t.integer :instituciones_id
      t.string :tag
      t.string :descripcion
      t.integer :activo
    end
  end
end
