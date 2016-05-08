class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
      t.string :nombre_acorde

      t.timestamps null: false
    end
  end
end
