class AddCoordinatesToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :latitude, :decimal
    add_column :artworks, :longitude, :decimal
  end
end
