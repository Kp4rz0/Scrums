class RenameParaAsociarTablas2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :usuarios, :tipo_usuario_id, :tipos_usuario_id
    rename_column :usuarios, :estado_usuario_id, :estados_usuario_id
    rename_column :proyectos_usuarios, :tipo_relacion_id, :tipos_relacione_id
  end
end
