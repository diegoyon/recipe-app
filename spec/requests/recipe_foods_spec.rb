require 'rails_helper'

RSpec.describe 'RecipeFoods', type: :request do
  login_user
  before(:each) do
    user = User.create!(name: 'Bob', email: 'bob@gmail.com', password: '123456qwert')
    @recipe = Recipe.create!(
      name: 'Apple',
      preparation_time: 30,
      cooking_time: 45,
      description: 'hi hi hi hi hi ',
      user_id: 1
    )
    @food = Food.create!(name: 'Apple',
                         measurement_unit: 'oz',
                         price: 1.5,
                         quantity: 1,
                         user_id: 1)
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end
  describe 'GET /index' do
    it 'renders a successful response' do
      RecipeFood.create!(quantity: 1, food_id: @food.id, recipe_id: @recipe.id)
      get recipes_url
      expect(response).to be_successful
    end
  end
end
