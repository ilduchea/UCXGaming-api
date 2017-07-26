require 'rails_helper'

describe "post a game_system route", :type => :request do

  before do
    # user = FactoryGirl.create(:user)
    # post '/v1/auth_user', params: {
    #   email: user.email,
    #   password: user.password
    # }
    # @user_api_key = JSON.parse(response.body)["auth_token"]
    @game_system = FactoryGirl.build(:game_system)

    post '/game_systems', params: {
      name: @game_system.name,
      publisher: @game_system.publisher,
      description: @game_system.description
    }
  end


  it 'returns the game_system name' do
    expect(JSON.parse(response.body)['name']).to eq(@game_system.name)
  end

  it 'returns the game_system publisher' do
    expect(JSON.parse(response.body)['publisher']).to eq(@game_system.publisher)
  end

  it 'returns the game_system description' do
    expect(JSON.parse(response.body)['description']).to eq(@game_system.description)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns error for missing param in game_system post' do
    post '/game_systems', params: {
      name: '',
      publisher: @game_system.publisher,
      description: @game_system.description
    }
    expect(response).to have_http_status(422)
  end
end
