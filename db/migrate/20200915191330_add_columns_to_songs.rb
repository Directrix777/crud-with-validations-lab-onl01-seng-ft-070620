class AddColumnsToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :genre, :string
    add_column :songs, :artist_name, :string
    
  end
end
