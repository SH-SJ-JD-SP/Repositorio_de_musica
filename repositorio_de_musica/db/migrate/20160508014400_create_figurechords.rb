class CreateFigurechords < ActiveRecord::Migration
  def change
    create_table :figurechords do |t|
      t.string :nombre_figura
      t.references :chord, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_attachment :figurechords, :imagenFigura
  end
end
