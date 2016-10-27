class CreateUsuariosProyectos < ActiveRecord::Migration[5.0]
  def change
    create_join_table :usuarios, :proyectos do |t|
      t.integer :activo
    end
  end
end
