require 'rails_helper'

describe 'patch animals route', :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    patch '/animals/5', params: { :catName => 'test_catName', :dogName => 'test_dogName', :catType => 'test_catType', :dogType => 'test_dogType', :dogSize => 'test_dogSize'}
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("Animals successfully updated.")
  end

end