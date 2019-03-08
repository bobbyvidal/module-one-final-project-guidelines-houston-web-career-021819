require_relative '../config/environment'
require_relative '../CLI_Methods.rb'

current_customer = ask_for_username
greet(current_customer)
get_city
menu(current_customer)
# write_review(current_restau)
#review(current_customer)


