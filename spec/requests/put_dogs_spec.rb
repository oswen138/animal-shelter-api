require 'rails_helper'

describe "put all dogs route", :type => :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}

  before do
    put '/dogs/1', params: { :dogName => 'test_dogName', :dogType => 'test_dogType', :dogSize => 'test_dogSize'}
  end  

  it 'updates the body of dog' do
    expect(JSON.parse(response.body)['message']).to eq 'This dog has been updated successfully.'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end