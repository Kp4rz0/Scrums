class CreateInstituciones < ActiveRecord::Migration[5.0]
  def change
    create_table :instituciones do |t|
      t.string :tag
      t.string :descripcion
      t.integer :activo
    end
  end
end
