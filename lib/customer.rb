require 'pry'

class Customer
    attr_accessor :name, :age
  @@all =[]

    def initialize(name, age)
        @name=name
        @age=age
        save
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal if  meal.customer==self}
    end

    def waiters
        meals.map{|meal| meal.waiter}
    end

    def save
        @@all<<self
    end
  
    def self.all
        @@all
    end
end