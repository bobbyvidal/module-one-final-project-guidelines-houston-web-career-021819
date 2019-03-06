class Restaurant < ActiveRecord::Base

    has_many :reviews
    has_many :customers, through: :reviews
    def name
       #returns the name of that particular restaurant instance
    end

    def reviews
       #returns all the reviews received from customers
    end
end