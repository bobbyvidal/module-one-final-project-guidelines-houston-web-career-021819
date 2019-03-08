
class Restaurant < ActiveRecord::Base

    has_many :reviews
    has_many :customers, through: :reviews

    def self.find_by_restaurants(food_type, current_city) 
        restaurants =  Restaurant.where(["city = ? and cuisine = ?", current_city, food_type])
        if restaurants == []
            puts "No restaurants of that type in this area."
        else
            names = []
            restaurants.each do |restaurant|
                names<<restaurant.name
            end
            puts names
            return restaurants
        end
    end

    
    #binding.pry
end