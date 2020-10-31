require 'rails_helper'

describe "DogsController", :type => :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}

  before do
    delete '/dogs/1', params: { :dogName => 'test_dogName', :dogType => 'test_dogType'}
  end  

  it 'returns delete message' do
    expect(JSON.parse(response.body)['message']).to eq 'This dog has been deleted successfully.'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end