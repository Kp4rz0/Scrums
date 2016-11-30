class RenameTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :estados_escrums, :estados_scrums
  end
end
