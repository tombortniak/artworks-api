class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, :null: false
      t.string :image
      t.references :artist, null: false, foreign_key: true
      t.string :location, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :continent, null: false
    end
  end
end
