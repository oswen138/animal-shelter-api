# require 'rails_helper'

# describe "put all names route", :type => :request do
#   let!(:names) { FactoryBot.create_list(:name, 20)}

#   before do
#     put '/names/5', params: { :petName => 'test_petName', :petType => 'test_petType', :petColor => 'test_petColor'} 
#   end  

#   it 'updates the body of name' do
#     expect(JSON.parse(response.body)['message']).to eq 'This name has been updated successfully.'
#   end

#   it 'returns status code 200' do
#     expect(response).to have_http_status(:success)
#   end
# end