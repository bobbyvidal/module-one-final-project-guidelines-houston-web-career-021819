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
        menu.choice("Indian"){rest_menu(Restaurant.find_by_restaurants("Indian",@city),customer)}
    end
end




def rest_menu_2(rest_name, customer)
    @cli.choose do |menu|
        menu.prompt = "What would you like to do?"
        menu.choice("See Reviews"){Review.find_review(rest_name)}
        menu.choice("Write new review"){customer.write_review(rest_name,get_review_from_customer(rest_name))}
    end
end

def get_review_from_customer(restaurant_name)
    content = @cli.ask "What review comment would you like to give?"
    rating = @cli.ask "How would you rate the restaurant on a scale of 1 to 5:"
    affordability = @cli.ask "How affordable you think the restaurant, on a scale of 1 to 5:"
    return [content, rating, affordability]
end

def rest_menu(rest_array,customer)
    @cli.choose do |menu|
        menu.prompt = "Which restaurant would you like to choose?"
        rest_array.each do |x|
        menu.choice(x){rest_menu_2(x, customer)}
        end
    end
end






