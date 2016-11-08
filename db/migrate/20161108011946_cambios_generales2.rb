class CambiosGenerales2 < ActiveRecord::Migration[5.0]
    def change
      drop_table :persrevs
      drop_table :profesguias
      drop_table :proguias
      add_column :proyectos_usuarios, :tipo_relacion_id, :integer
      drop_table :tiporevs
      drop_table :tiposguias
      create_table :tipos_relaciones do |t|
        t.string :descripcion
        t.integer :activo
      end
    end
end
