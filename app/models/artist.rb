class Artist < ApplicationRecord
    has_many :artworks
    validates_presence_of :name, :country, :period
end
