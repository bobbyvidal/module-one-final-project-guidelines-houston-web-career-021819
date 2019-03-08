class Review < ActiveRecord::Base
    
    belongs_to :restaurant
    belongs_to :customer
 
    def self.find_review(restaurant)
        review = Review.find_by(restaurant_name: restaurant)
        if review != nil
            puts "Rating: #{review.rating}, Affordability: #{review.affordability}, Review: #{review.content}"
        else
            puts "Reviews are not available for this restaurant."
        end
        return review
    end
    
    
end

