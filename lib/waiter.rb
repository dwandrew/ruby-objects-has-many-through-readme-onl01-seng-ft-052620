 def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
 
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
 
  def new_meal_20_percent(waiter, total)
    tip = total * 0.2
    Meal.new(waiter, self, total, tip)
  end
 
  def self.oldest_customer
    oldest_age = 0
    oldest_customer = nil
    self.all.each do |customer|
      if customer.age > oldest_age
        oldest_age = customer.age
        oldest_customer = customer
      end
    end
    oldest_customer
  end
 
end