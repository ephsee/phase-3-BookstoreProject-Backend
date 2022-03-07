puts "🌱 Seeding spices..."




# Seed your database here
puts "Seeding Customers"

10.times do
    # name, email, address
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    full_name = first_name.concat(" #{last_name}")
    email = "#{first_name}_#{last_name}@flatiron.com"

    Customer.create(name: full_name, email: email, address: Faker::Address.street_address)
end


puts "Seeding Books"

50.times do
    # title, author, genre, publisher, quantity
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        publisher: Faker::Book.publisher,
        genre: Faker::Book.genre,
        quantity: rand(1..8)
        )
end



puts "✅ Done seeding!"
