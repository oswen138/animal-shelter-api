require 'rails_helper'

describe "CatsController", :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before do
    delete '/cats/1', params: { :catName => 'test_catName', :catType => 'test_catType'}
  end  

  it 'returns delete message' do
    expect(JSON.parse(response.body)['message']).to eq 'This cat has been deleted successfully.'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end