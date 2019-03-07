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

def get_city
    @city = @cli.ask "Please enter the city"
end

def menu(customer)
    @cli.choose do |menu|
        menu.prompt = "What are you looking for today?"
        
        
        menu.choice("Italian",){Restaurant.find_by_restaurants("Italian",@city).each {|x| puts x.name}}
            
        menu.choice("Japanese"){Restaurant.find_by_restaurants("Japanese",@city).each {|x| puts x.name}}
        menu.choice("Szechuan"){Restaurant.find_by_restaurants("Szechuan",@city).each {|x| puts x.name}}
        menu.choice("American"){Restaurant.find_by_restaurants("American",@city).each {|x| puts x.name}}
        menu.choice("Latin"){Restaurant.find_by_restaurants("Latin",@city).each {|x| puts x.name}}
        menu.choice("Indian"){Restaurant.find_by_restaurants("Indian",@city).each {|x| puts x.name}}
    end

    # @cli.choose do |city|
    #     city.prompt = "Enter the city"
    #     city.choice(city_c){
    #         Restaurant.
    #     }

end

#binding.pry



current_customer = ask_for_username
greet(current_customer)
get_city
menu(current_customer)
