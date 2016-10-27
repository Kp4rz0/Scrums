class CreateTiposUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_usuarios do |t|
      t.string :descripcion
      t.integer :activo
    end
  end
end
