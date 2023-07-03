require 'rails_helper'

RSpec.describe Artwork, type: :model do
    subject {
        described_class.new(title: "Mona Lisa",
                            artist_id: 1,
                            location: "Louvre",
                            city: "Paris",
                            country: "France",
                            continent: "Europe")
    }
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a title" do 
        subject.title = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without an artist id" do
        subject.artist_id = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a location" do
        subject.location = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a city" do
        subject.city = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a country" do
        subject.country = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a continent" do
        subject.continent = nil
        expect(subject).to_not be_valid
    end
end