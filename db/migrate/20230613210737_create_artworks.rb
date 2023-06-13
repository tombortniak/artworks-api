class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image
      t.references :artist, null: false, foreign_key: true
      t.string :location
      t.string :city
      t.string :country
      t.string :continent
    end
  end
end
