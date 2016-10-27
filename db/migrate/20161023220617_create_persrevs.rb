class CreatePersrevs < ActiveRecord::Migration[5.0]
  def change
    create_table :persrevs do |t|
      t.integer :tipguia_id
      t.integer :usuario_id
      t.integer :activo
    end
  end
end
