class Review < ActiveRecord::Base
    
    belongs_to :restaurant
    belongs_to :customer
    
    validates :rating, :inclusion => {:in => 1..5}
    validates :affordability, :inclusion => {:in => 1..5}

end

