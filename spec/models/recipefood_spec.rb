require 'rails_helper'

RSpec.describe 'Recipefood', type: :model do
  describe 'Recipefood model' do
    before(:each) do
      @user = User.create(name: 'Tascha', email: 'nat@mail.com', password: 'password')
      @recipe = Recipe.create name: '', cooking_time: 25, preparation_time: 15, description: 'Steps goes here',
      @food = Food.create(name: 'tomato', measurement_unit: 'grams', price: 2, quantity: 1, user_id: @user)
      @recipefood = Recipefood.create(quantity: 1, food_id: @food, recipe_id:@recipe)
    end  # before { recipefood.save }

    it 'should check that the name is not blank' do
      
      recipefood.name = nil
      expect(recipefood).to_not be_valid
    end

    it 'should check that the measurement_unit is not blank' do
      recipefood.measurement_unit = nil
      expect(recipefood).to_not be_valid
    end

    it 'should check that the price is not blank' do
      recipefood.price = nil
      expect(recipefood).to_not be_valid
    end
  end
end
end