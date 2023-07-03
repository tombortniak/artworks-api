require 'rails_helper'

RSpec.describe "Artists", type: :request do
  describe "GET /api/v1/artists" do
    it "returns http success" do
      get "/api/v1/artists"
      expect(response).to be_successful
    end
  end
  
  describe "GET /api/v1/artists/:id" do
    it "returns http success" do
      get "/api/v1/artists/1"
      expect(response).to be_successful
    end
  end
end