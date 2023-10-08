class AllowNullArtistInArtworks < ActiveRecord::Migration[7.0]
  def change
    change_column_null :artworks, :artist_id, null: true
  end
end
