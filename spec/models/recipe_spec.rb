require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should have_many(:recipe_foods) }
end
