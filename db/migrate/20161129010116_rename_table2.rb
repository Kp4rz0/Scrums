class RenameTable2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :proyectos, :estado_proyecto_id, :estados_proyecto_id
  end
end
