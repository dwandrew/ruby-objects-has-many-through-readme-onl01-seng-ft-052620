class Waiter
    attr_accessor :name, :experience
  @@all =[]

    def initialize(name, exp)
        @name=name
        @experience=exp
        save
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal if  meal.waiter==self}
    end

    def best_tipper
    best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
    best_tipped_meal.customer
    end

    def save
        @@all<<self
    end
  
    def self.all
        @@all
    end
end