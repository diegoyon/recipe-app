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
    value = @food_quantity2 - @food_quantity1
    if value >= 0
      value
    else
      0
    end
  end
end
