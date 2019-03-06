class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews


    def self.find_by_restaurants(restaurant)
        y = self.restaurants.find_by cuisine: restaurant
    end

end


