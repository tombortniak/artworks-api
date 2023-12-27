class AddCoordinatesToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :latitude, :decimal, null: false
    add_column :artworks, :longitude, :decimal, null: false
  end
end
