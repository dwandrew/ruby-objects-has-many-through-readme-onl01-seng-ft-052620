def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
 
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  endclass Meal

end