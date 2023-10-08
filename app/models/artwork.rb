class Artwork < ApplicationRecord
  belongs_to :artist
  validates_presence_of :title, :location, :city, :country, :continent, :form, :year_started
end
