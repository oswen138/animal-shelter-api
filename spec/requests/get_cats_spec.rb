require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before { get '/cats'}

<<<<<<< HEAD:spec/requests/get_animals_spec.rb
  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(10)
=======
  it 'returns all cats' do
    expect(JSON.parse(response.body).size).to eq(20)
>>>>>>> b3f2ed13bb579a47fd45b39626c2e6f3bee40e9e:spec/requests/get_cats_spec.rb
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end