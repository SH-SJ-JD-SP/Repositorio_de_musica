class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
