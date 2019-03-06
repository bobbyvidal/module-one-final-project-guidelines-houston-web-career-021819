class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews
end



#this is test code to see if the merge worked 
