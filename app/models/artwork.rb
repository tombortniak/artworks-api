class Artwork < ApplicationRecord
  belongs_to :artist
  validates_presence_of :title, :location, :city, :country, :continent, :artist_id
end
