@user = User.create(username: "itsme", password: "lawl")
@user1 = User.create(username: "alex", password: "volkson")

@coffee_1 = Product.create(name: "Arabica", brand: "Mugatu", price: 51.00, category: "coffee")
@tea_1 = Product.create(name: "Lady Grey", brand: "Zoolander", price: 30.00, category: "tea")
@coffee_2 = Product.create(name: "Blonde Roast", brand: "Starbucks", price: 0.50, category: "coffee")
@tea_2 = Product.create(name: "Rose Tea", brand: "Tea Brand", price: 14, category: "tea")
@coffee_3 = Product.create(name: "Dark Roast", brand: "Starbucks", price: 11.50, category: "coffee")
@tea_3 = Product.create(name: "Black Tea", brand: "Mugatu", price: 3.50, category: "tea")
@coffee_4 = Product.create(name: "Medium Roast", brand: "Black Riffle", price: 7.50, category: "coffee")
@tea_4 = Product.create(name: "earl grey 4", brand: "some type of tea", price: 6.50, category: "tea")
@coffee_5 = Product.create(name: "Espresso", brand: "Black Rifle", price: 4.50, category: "coffee")
@tea_5 = Product.create(name: "Lavender", brand: "Some Chinese Brand", price: 50 ,category: "tea")
@coffee_6 = Product.create(name: "Ethiopia", brand: "some type of coffee", price: 1.50, category: "coffee")
@tea_6 = Product.create(name: "Ginger", brand: "RedHeeeaads", price: 4.50, category: "tea")

@user.products = []
@user1.products = []
@user.products << @coffee_1
@user.products << @coffee_6
@user1.products << @tea_1 
@user1.products << @coffee_5