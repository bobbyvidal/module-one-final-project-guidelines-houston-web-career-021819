class Restaurant < ActiveRecord::Base

    has_many :reviews
    has_many :customers, through: :reviews

    def self.find_by_restaurants(cuisine) 
        restaurants = Restaurant.where(cuisine: cuisine)
    end

end