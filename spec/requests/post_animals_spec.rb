require 'rails_helper'

describe "post animal route", :type => :request do

  before do
    post '/animals', params: { :catName => 'test_catName', :dogName => 'test_dogName', :catType => 'test_catType', :dogType => 'test_dogType', :dogSize => 'test_dogSize'}
  end

  it 'returns the cat name' do
    expect(JSON.parse(response.body)['catName']).to eq('test_catName')
  end

  it 'returns the cat type' do
    expect(JSON.parse(response.body)['catType']).to eq('test_catType')
  end

  it 'returns the dog name' do
    expect(JSON.parse(response.body)['dogName']).to eq('test_dogName')
  end

  it 'returns the dog type' do
    expect(JSON.parse(response.body)['dogType']).to eq('test_dogType')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end