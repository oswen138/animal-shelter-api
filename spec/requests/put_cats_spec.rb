require 'rails_helper'

describe "put all cats route", :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before do
    put '/cats/1', params: { :catName => 'test_catName', :catType => 'test_catType'}
  end  

  it 'updates the body of cat' do
    expect(JSON.parse(response.body)['message']).to eq 'This cat has been updated successfully.'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end