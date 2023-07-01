require 'rails_helper'

RSpec.describe "Artists", type: :request do
  describe "GET /artists" do
    it "returns http success" do
      get "/artists"
      expect(response).to be_successful
    end
  end
  
  describe "GET /artists/:id" do
    it "returns http success" do
      get "/artists/1"
      expect(response).to be_successful
    end
  end
end