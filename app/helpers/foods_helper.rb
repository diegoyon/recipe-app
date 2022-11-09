module FoodsHelper
  def difference(arr1, arr2)
    @food_quantity1 = 0
    @food_quantity2 = 0
    arr1.each do |food|
      @food_quantity1 += food
    end
    arr2.each do |food|
      @food_quantity2 += food
    end
    @food_quantity2 - @food_quantity1
  end

  # arr1=[foods.quantity][apple, banana]
  # arr2=[recipe_foods.quantity][banana, apple, banana , apple, apple, banana]
  # arr2 = select count(*)  where name: banana
end
