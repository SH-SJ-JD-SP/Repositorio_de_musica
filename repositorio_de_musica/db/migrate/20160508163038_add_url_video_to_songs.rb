class AddUrlVideoToSongs < ActiveRecord::Migration
  def change
  	add_column :songs, :url_video, :string
  end
end
