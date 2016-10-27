class CreateTiporevs < ActiveRecord::Migration[5.0]
  def change
    create_table :tiporevs do |t|
      t.string :descripcion
      t.integer :activo
    end
  end
end
