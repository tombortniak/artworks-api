require 'rails_helper'

RSpec.describe "Artworks", type: :request do
  describe "GET /api/v1/artworks" do
    it "returns http success" do
      get "/api/v1/artworks"
      expect(response).to be_successful
    end
  end

  describe "GET /api/v1/artworks/:id" do
    it "returns http success" do
      get "/api/v1/artworks/1"
      expect(response).to be_successful
    end
  end
end
