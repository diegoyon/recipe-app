class Food < ApplicationRecord
  belongs_to :user, optional: true
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
  validates :quantity, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }
end
