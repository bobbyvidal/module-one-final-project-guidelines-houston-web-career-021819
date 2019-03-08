class Review < ActiveRecord::Base
    
    belongs_to :restaurant
    belongs_to :customer
 
    def self.find_review(restaurant)
        review = Review.find_by(restaurant_name: restaurant)
        "Rating: #{review.rating}, Affordability: #{review.affordability}, Review: #{review.content}"
    end
    binding.pry
end

