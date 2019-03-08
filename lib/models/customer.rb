
# require_relative '../config/environment'
# require_relative '../CLI_Methods.rb'

class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    #@cli = Highline.new
    def write_review(current_restaurant, array_of_stuf)
        
        i_customer_id = self.id
        i_restaurant = Restaurant.find_by(name: current_restaurant)
        i_restaurant_id = i_restaurant.id
        i_restaurant_name = i_restaurant.name
        
        i_content = array_of_stuf[0]
        i_rating = array_of_stuf[1]
        i_affordability = array_of_stuf[2]
        new_review = Review.create(customer_id: i_customer_id, restaurant_id: i_restaurant_id, content: i_content, rating: i_rating, affordability: i_affordability)
        puts new_review
        puts "ThankYou for your valuable review!"
        return new_review
        #binding.pry
    end
    
end



