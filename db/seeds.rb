Restaurant.destroy_all
Review.destroy_all
Customer.destroy_all


hema = Customer.create(name: "Hema", favorite_cuisine: "Indian")
bobby = Customer.create(name: "Bobby", favorite_cuisine: "Italian")
jack = Customer.create(name: "Jack", favorite_cuisine: "Japanese")
eli = Customer.create(name: "Eli", favorite_cuisine: "Latin")
zoe = Customer.create(name: "Zoe", favorite_cuisine: "Szechuan")
alan = Customer.create(name: "Alan", favorite_cuisine: "American")


bobs_burgers = Restaurant.create(name: "Bobs Burgers", city: "Houston", cuisine: "American")
sallys_szechuan = Restaurant.create(name: "Sally's Szechuan", city: "Bellaire", cuisine: "Szechuan")
hibachi_heaven = Restaurant.create(name: "Hibachi Heaven", city: "Katy", cuisine: "Japanese")
pollys_pasta = Restaurant.create(name: "Polly's Pasta", city: "Houston", cuisine: "Italian")
taqueria_barba = Restaurant.create(name: "Taqueria Barba", city: "Dallas", cuisine: "Latin")
bombay_pizza = Restaurant.create(name: "Bombay Pizza Co.", city: "Houston", cuisine: "Indian")


review1 = Review.create(customer_id: alan.id, restaurant_id: bobs_burgers.id, content: "This place is very bad and there is a girl names Tina that is very weird and awkward.", rating: 1, affordability: 4)
#problem with our validator and auto-value setter
review2 = Review.create(customer_id: hema.id, restaurant_id: bombay_pizza.id, content: "Bombay Pizza Co. is average but super affordable.", rating: 3, affordability: 5)
review3 = Review.create(customer_id: bobby.id, restaurant_id: pollys_pasta.id, content: "Polly's really knows how to overprice their food.", rating: 4, affordability: 1)
review4 = Review.create(customer_id: jack.id, restaurant_id: hibachi_heaven.id, content: "This place is wicked bad.", rating: 2, affordability: 1)
review5 = Review.create(customer_id: eli.id, restaurant_id: taqueria_barba.id, content: "Best food I've ever had!", rating: 5, affordability: 5)









