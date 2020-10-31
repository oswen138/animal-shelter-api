require 'rails_helper'

describe 'patch animals route', :type => :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}

  before do
    patch '/dogs/5', params: { :dogName => 'test_dogName', :dogType => 'test_dogType', :dogSize => 'test_dogSize'}
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("Dogs successfully updated.")
  end

end