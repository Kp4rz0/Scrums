class CambiosGenerales2 < ActiveRecord::Migration[5.0]
    def change
      add_column :proyectos_usuarios, :tipo_relacion_id, :integer
      create_table :tipos_relaciones do |t|
        t.string :descripcion
        t.integer :activo
      end
    end
end
