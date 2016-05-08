class CreateTunings < ActiveRecord::Migration
  def change
    create_table :tunings do |t|
      t.string :nombre_afinacion
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
