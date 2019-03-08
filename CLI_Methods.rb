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

clear_log

def get_city
    @city = @cli.ask "Please enter your city:"
end

def menu(customer)
    @cli.choose do |menu|
        menu.prompt = "What are you looking for today?"

        menu.choice("Italian",){rest_menu(Restaurant.find_by_restaurants("Italian",@city))}
        menu.choice("Japanese"){rest_menu(Restaurant.find_by_restaurants("Japanese",@city))}
        menu.choice("Szechuan"){rest_menu(Restaurant.find_by_restaurants("Szechuan",@city))}
        menu.choice("American"){rest_menu(Restaurant.find_by_restaurants("American",@city))}
        menu.choice("Latin"){rest_menu(Restaurant.find_by_restaurants("Latin",@city))}
        menu.choice("Indian"){rest_menu(Restaurant.find_by_restaurants("Indian",@city))}
    end
end

def rest_menu(rest_array)
    @cli.choose do |menu|
        menu.prompt = "What are you looking for today?"
        rest_array.each do |current_restaurant|
        menu.choice(current_restaurant){Review.find_review(current_restaurant)}
        end
    end
end




