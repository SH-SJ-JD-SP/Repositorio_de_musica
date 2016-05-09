class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :titulo,         null: false
      t.string :autor,		null: false
      t.string :album
      t.integer :anio_creacion
      t.text :letra
      t.references :genre, index: true, foreign_key: true
      t.references :tuning, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
