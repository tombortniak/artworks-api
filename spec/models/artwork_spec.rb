require 'rails_helper'

RSpec.describe Artwork, type: :model do
    subject {
        described_class.new(title: "Mona Lisa",
                            artist_id: 1,
                            form: "painting",
                            year_started: "1503",
                            year_completed: nil,
                            description_link: "https://test_link.com",
                            height: 123.5,
                            width: 76,
                            location: "Louvre",
                            city: "Paris",
                            country: "France",
                            continent: "Europe")
    }
    it "is not valid without a title" do 
        subject.title = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a type" do 
        subject.form = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a creation start year" do 
        subject.year_started = nil
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