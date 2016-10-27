class CreateEstadosUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :estados_usuarios do |t|
      t.string :descripcion
      t.integer :activo
    end
  end
end
