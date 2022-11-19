require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  describe 'GET foods#index' do
    before(:each) do
      user = User.create name: 'Guy', email: 'hulk@example.com', password: '123456'
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      get foods_path
    end

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render correct template' do
      expect(response).to render_template(:index)
    end

    it "should render page contenting 'Foods List'" do
      expect(response.body).to include('Foods List')
    end
  end
end