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

def options(customer)
    @cli.choice do |menu|
        menu.prompt = "What are you looking for today?"
        menu.choice("Italian"){}
        menu.choice("Japanese"){}
        menu.choice("Szechuan"){}
        menu.choice("American"){}
        menu.choice("Latin"){}
        menu.choice("Indian"){}
    end
end

binding.pry










current_customer = ask_for_username
greet(current_customer)