require 'rails_helper'

RSpec.describe "Artworks", type: :request do
  describe "GET /artworks" do
    it "returns http success" do
      get "/artworks"
      expect(response).to be_successful
    end
  end

  describe "GET /artworks/:id" do
    it "returns http success" do
      get "/artworks/1"
      expect(response).to be_successful
    end
  end
end
