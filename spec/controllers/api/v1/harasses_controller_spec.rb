require 'rails_helper'

RSpec.describe Api::V1::HarassesController, type: :request do
  describe 'GET /api/v1/harasses' do
    let(:url) { "/api/v1/harasses"}
    before do
      @harasses = [ Fabricate(:harass) ]
      get url
    end

    it 'has a response with 200 status code' do
      expect(response).to have_http_status(200)
    end

    it "JSON body response contains expected harass attributes" do
      json_response = JSON.parse(response.body)
      expect(json_response).not_to be_empty
      expect(json_response).to include{@harasses.to_json}
    end
  end

  describe 'POST /api/v1/harasses' do
    it 'POST successfully' do
      post '/api/v1/harasses', params: { harass: {start_address: "Akazienstr.11, Berlin", happened_at: Date.today, description: "A creepy follow"} }
      expect(response).to have_http_status(200)
    end
  end
end