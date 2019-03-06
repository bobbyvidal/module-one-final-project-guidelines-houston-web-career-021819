Restaurant.destroy_all
Review.destroy_all
Customer.destroy_all


hema = Customer.create(name: "Hema", favorite_cuisine: "Indian")
bobs_burgers = Restaurant.create(name: "Bobs Burgers", city: "Houston", cuisine: "American")
review1 = Review.create(customer_id: hema.id, restaurant_id: bobs_burgers.id, content: "This place is very delicious but there is a girl names Tina that is very weird and awkward.", rating: 3, affordability: 4)









