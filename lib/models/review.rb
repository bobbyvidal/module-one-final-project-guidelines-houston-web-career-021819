class Review < ActiveRecord::Base
    
    belongs_to :restaurant
    belongs_to :customer
    def write_review
        # a method to make a customer instance to write a review for a restaurant
    end
 
    def search_restaurant
        # returns the top 5 rated restaurant in the favorite cuisine of that customer
    end
 
    def name
        #simply returns the name of a customer instance
    end
 
    def favorite_cuisine
        #simply returns the favorite cuisine of a customer instance
    end
    
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

