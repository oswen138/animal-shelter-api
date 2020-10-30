require 'rails_helper'

describe "post dog route", :type => :request do

  before do
    post '/dogs', params: { :dogName => 'test_dogName', :dogType => 'test_dogType', :dogSize => 'test_dogSize'}
  end

  it 'returns the dog name' do
    expect(JSON.parse(response.body)['dogName']).to eq('test_dogName')
  end

  it 'returns the dog type' do
    expect(JSON.parse(response.body)['dogType']).to eq('test_dogType')
  end

  it 'returns the dog size' do
    expect(JSON.parse(response.body)['dogSize']).to eq('test_dogSize')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end