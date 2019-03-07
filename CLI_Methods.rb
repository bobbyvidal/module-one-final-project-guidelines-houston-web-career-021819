require_relative "config/environment.rb"

@cli = HighLine.new 

def clear_log
    system "clear"
end 

def ask_for_username
    result = Customer.find_by(name: (@cli.ask "Please enter your name."))
    while result == nil
        result = Customer.find_by(name: (@cli.ask "Your name is not in our database. Please enter your name."))
    end
    result
end

clear_log

def greet(customer)
    puts "Welcome back #{customer.name}!"
end

def get_city
    @city = @cli.ask "Please enter your city:"
end

def menu(customer)
    @cli.choose do |menu|
        menu.prompt = "What are you looking for today?"

        menu.choice("Italian",){Restaurant.find_by_restaurants("Italian",@city)}
        menu.choice("Japanese"){Restaurant.find_by_restaurants("Japanese",@city)}
        menu.choice("Szechuan"){Restaurant.find_by_restaurants("Szechuan",@city)
        menu.choice("American"){Restaurant.find_by_restaurants("American",@city)
        menu.choice("Latin"){Restaurant.find_by_restaurants("Latin",@city)
        menu.choice("Indian"){Restaurant.find_by_restaurants("Indian",@city)
    end
end

# def review(customer)
#     @cli.choose do |menu|
#         menu.prompt = "What restaurant would you like to see reviews for?"
       
#         menu.choice("Bob's Burgers"){Review.find_review("Bob's Burgers").each {|x| puts x.content}}
#         menu.choice("Sally's Szechuan"){Review.find_review("Sally's Szechuan").each {|x| puts x.content}}
#         menu.choice("Hibachi Heaven"){Review.find_review("Hibachi Heaven").each {|x| puts x.content}}
#         menu.choice("Polly's Pasta"){Review.find_review("Polly's Pasta").each {|x| puts x.content}}
#         menu.choice("Taqueria Barba"){Review.find_review("Taqueria Barba").each {|x| puts x.content}}
#         menu.choice("Bombay Pizza Co."){Review.find_review("Bombay Pizza Co.").each {|x| puts x.content}}
#         menu.choice("Steve's Spaghetti"){Review.find_review("Steve's Spaghetti").each {|x| puts x.content}}
        
#     end
#  end
 




