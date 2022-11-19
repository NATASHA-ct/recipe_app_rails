require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Guy',
      email: 'guyhlk@gmail.com',
      password: '123456'
    ),
            @recipe = Recipe.create(
              name: 'Rice recipe',
              preparation_time: '10',
              cooking_time: '20',
              description: 'Cook rice',
              public: true,
              user_id: 1
            )
  end

  it '@recipe created should be valid' do
    expect(@recipe).to be_valid
  end
  it '@name must not be blank' do
    expect(@recipe.name).to eq('Rice recipe')
  end
  it '@quantity must be an integer' do
    expect(@recipe.preparation_time).to eq(10)
  end
  it '@price created should be valid' do
    expect(@recipe.cooking_time).to eq(20)
  end
  it '@Measuremnt_unit must be an integer greater than or equal zero.' do
    expect(@recipe.public).to eq(true)
  end
end
