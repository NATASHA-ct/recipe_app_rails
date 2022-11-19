require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe "GET './index' page" do
    before(:all) do
      @address = get '/users'
    end

    it 'it should return a valid status' do
      expect(@address).to eq(302)
    end
  end
end
