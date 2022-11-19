require 'rails_helper'

RSpec.describe Food, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Guy',
      email: 'guyhlk@gmail.com',
      password: '123456'
    ),
            @food = Food.create(
              user_id: 1,
              name: 'Rice',
              measurement_unit: '10kg',
              price: 100,
              quantity: 10
            )
  end

  it '@post created should be valid' do
    expect(@food).to be_valid
  end
  it '@name must not be blank' do
    expect(@food.name).to eq('Rice')
  end
  it '@quantity must be an integer' do
    expect(@food.quantity).to eq(10)
  end
  it '@price created should be valid' do
    expect(@food.price).to eq(100)
  end
  it '@Measuremnt_unit must be an integer greater than or equal zero.' do
    expect(@food.measurement_unit).to eq(10)
  end
end
