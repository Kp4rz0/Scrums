class CreateEstadosProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :estados_proyectos do |t|
      t.string :descripcion
      t.integer :activo
    end
  end
end
