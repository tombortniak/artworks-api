class AddDetailsToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :form, :string, null: false
    add_column :artworks, :year_started, :integer, null: false
    add_column :artworks, :year_completed, :integer
    add_column :artworks, :description_link, :string
    add_column :artworks, :height, :decimal
    add_column :artworks, :width, :decimal
  end
end
