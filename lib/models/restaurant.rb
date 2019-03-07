class Restaurant < ActiveRecord::Base

    has_many :reviews
    has_many :customers, through: :reviews

    def self.find_by_restaurants(food_type) 
        restaurants = Restaurant.where(cuisine: food_type)

    end

    #binding.pry
end