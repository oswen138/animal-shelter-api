require 'rails_helper'

describe "AnimalsController", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    delete '/animals/1', params: { :catName => 'test_catName', :dogName => 'test_dogName', :catType => 'test_catType', :dogType => 'test_dogType', :dogSize => 'test_dogSize'}
  end  

  it 'returns delete message' do
    expect(JSON.parse(response.body)['message']).to eq 'This animal has been deleted successfully.'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end