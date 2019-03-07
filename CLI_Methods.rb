require_relative "config/environment.rb"

@cli = HighLine.new 

def ask_for_username
    result = Customer.find_by(name: (@cli.ask "Please enter your name."))
    while result == nil
        result = Customer.find_by(name: (@cli.ask "Your name is not in our database. Please enter your name."))
    end
    result
end

def greet(customer)
    puts "Welcome back #{customer.name}!"
end

def menu(customer)
    @cli.choose do |menu|
        menu.prompt = "What are you looking for today?"
        
        
        menu.choice("Italian"){ puts Restaurant.find_by_restaurants("Italian")[0].name}
        menu.choice("Japanese"){Restaurant.find_by_restaurants("Japanese")}
        menu.choice("Szechuan"){Restaurant.find_by_restaurants("Szechuan")}
        menu.choice("American"){Restaurant.find_by_restaurants("American")}
        menu.choice("Latin"){Restaurant.find_by_restaurants("Latin")}
        menu.choice("Indian"){Restaurant.find_by_restaurants("Indian")}



        
    end
end

#binding.pry



current_customer = ask_for_username
greet(current_customer)
menu(current_customer)