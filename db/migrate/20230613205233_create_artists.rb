class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.string :period, null: false
    end
  end
end
