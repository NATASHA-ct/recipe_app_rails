require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET recipes#index' do
    before(:each) do
      user = User.create name: 'Guy', email: 'hulk@example.com', password: 'password'
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      get recipes_path
    end

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render correct template' do
      expect(response).to render_template(user_session_path)
    end

    it 'should render correct content' do
      expect(response.body).to include('Your Recipes')
    end
  end
end