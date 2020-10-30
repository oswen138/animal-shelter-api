require 'rails_helper'

describe 'patch cats route', :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before do
    patch '/cats/5', params: { :catName => 'test_catName', :catType => 'test_catType'}
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("Cats successfully updated.")
  end

end