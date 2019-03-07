class Review < ActiveRecord::Base
    
    belongs_to :restaurant
    belongs_to :customer
 
    # def self.find_review(restaurant)
    #     review = Review.where(restaurant_name: restaurant)
    # end
    # #validates :rating, :inclusion => {:in => 1..5}
    # if rating > 5
    #     rating ==5
    # elsif rating < 1
    #     rating ==1
    # end

    # if affordability > 5
    #     affordability ==5
    # elsif affordability < 1
    #     affordability ==1
    # end


    
    #validates :affordability, :inclusion => {:in => 1..5}

end

