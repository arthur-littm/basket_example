Product.destroy_all
u = User.create(email: "arthur@lewagon.com", password: "123456")
c = Customer.create(first_name: "Arthur", last_name: "Littmann", user: u)

Product.create(price_cents: 200, name: "Green smoothie")
Product.create(price_cents: 300, name: "Blue smoothie")
Product.create(price_cents: 400, name: "Purple smoothie")
Product.create(price_cents: 150, name: "Orange smoothie")
Product.create(price_cents: 230, name: "Yellow smoothie")
