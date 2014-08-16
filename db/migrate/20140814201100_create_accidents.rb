class CreateAccidents < ActiveRecord::Migration
  def change
    create_table :accidents do |t|
      t.string :nombre_diligenciador
      t.references :tipodoc, index: true
      t.string :documento
      t.string :nombre_afectado
      t.integer :tipodoc_id
      t.string :documento

      t.timestamps
    end
  end
end
