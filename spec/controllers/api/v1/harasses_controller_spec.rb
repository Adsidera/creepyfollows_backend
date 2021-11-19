require 'rails_helper'

RSpec.describe Api::V1::HarassesController, type: :request do
  describe 'GET /api/v1/harasses' do
    let(:url) { '/api/v1/harasses'}
    before do
      @harasses = [ Fabricate(:harass, happened_at: Date.iso8601('2021-11-19'), description: 'A man followed me') ]
      get url
    end

    it 'has a response with 200 status code' do
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data'].first['attributes']).to  match(
        hash_including(
          {
            'start_address'=>'Ackerstr.18, Berlin',
            'description'=>'A man followed me',
            'longitude'=>13.3970128,
            'latitude'=>52.5314368,
            'when'=>'19 Nov 2021'}
        )
      )
    end

    it 'JSON body response contains expected harass attributes' do
      json_response = JSON.parse(response.body)
      expect(json_response).not_to be_empty
      expect(json_response).to include{@harasses.to_json}
    end
  end

  describe 'POST /api/v1/harasses' do
    subject(:action) { post '/api/v1/harasses', params: params }

    let(:params) do
      {
        harass:
          {
            start_address: 'Akazienstr.11, Berlin',
            happened_at: Date.iso8601('2021-11-19'),
            description: 'A creepy follow'
          }
      }
    end

    it 'POST successfully' do
      action

      expect(response).to have_http_status(200)
      expect(JSON.parse response.body).to match(
        hash_including(
          'status'=>'OK',
          'message'=>'created harass case',
        )
      )
    end
  end
end