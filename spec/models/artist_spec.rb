require 'rails_helper'

RSpec.describe Artist, type: :model do
    subject {
        described_class.new(name: "Leonardo da Vinci",
                            country: "Italy",
                            period: "Renaissance")
    }
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without country" do
        subject.country = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without period" do
        subject.period = nil
        expect(subject).to_not be_valid
    end
end