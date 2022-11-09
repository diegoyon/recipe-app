module RecipesHelper
    def count_total(foods)
        total = 0
        foods.each do |food|
          value =  food.quantity * food.price
          total += value
        end
        total
    end
end
