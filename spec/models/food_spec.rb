require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should have_many(:recipe_foods) }
end
