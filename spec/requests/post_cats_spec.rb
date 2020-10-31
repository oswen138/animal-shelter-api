require 'rails_helper'

describe "post cat route", :type => :request do

  before do
    post '/cats', params: { :catName => 'test_catName', :catType => 'test_catType'}
  end

  it 'returns the cat name' do
    expect(JSON.parse(response.body)['catName']).to eq('test_catName')
  end

  it 'returns the cat type' do
    expect(JSON.parse(response.body)['catType']).to eq('test_catType')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end