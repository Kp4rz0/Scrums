class RenameParaAsociarTablas < ActiveRecord::Migration[5.0]
  def change
    rename_column :facultades, :instituciones_id, :institucione_id
    rename_column :departamentos, :facultades_id, :facultade_id
    rename_column :carreras, :departamentos_id, :departamento_id
  end
end
