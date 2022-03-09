puts "🌱 Seeding spices..."

imagesArray = [

    "https://cdn.pixabay.com/photo/2017/10/29/11/33/fantasy-2899517_960_720.jpg",

    "https://cdn.pixabay.com/photo/2019/08/12/14/03/moon-4401335_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2019/11/03/11/43/skull-4598438_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2021/06/25/08/33/king-6363180_960_720.jpg",

    "https://cdn.pixabay.com/photo/2017/10/29/11/24/fantasy-2899492_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2019/07/15/15/39/fantasy-4339663_960_720.jpg",

    "https://cdn.pixabay.com/photo/2018/02/21/09/35/steampunk-3169877_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2018/04/22/16/48/fantasy-3341586_960_720.jpg",

    "https://cdn.pixabay.com/photo/2017/10/31/02/26/fantasy-2904092_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2019/03/01/18/32/night-4028339_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2020/03/15/13/49/temple-4933682_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2019/08/25/20/56/portrait-4430290_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2022/03/03/08/44/fantasy-7044893_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2022/02/28/20/35/woman-7040050_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2019/09/28/19/25/fantasy-4511623_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2019/07/21/13/04/landscape-4352732_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2016/04/09/18/21/photo-book-1318702_960_720.png",
    
    "https://cdn.pixabay.com/photo/2018/10/11/17/36/gothic-3740388_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2017/08/02/14/15/smoke-2571739_960_720.jpg",
    
    "https://cdn.pixabay.com/photo/2022/02/28/20/24/woman-7040028_960_720.jpg"

]

# Seed your database here
puts "Seeding Customers"

4.times do
    # name, email, address
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    full_name = "#{first_name} #{last_name}"
    email = "#{first_name.downcase}_#{last_name.downcase}@flatiron.com"

    Customer.create(name: full_name, email: email, address: Faker::Address.street_address)
end

puts "Seeding Books"

20.times do
    # title, author, genre, publisher, quantity, image, description
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        publisher: Faker::Book.publisher,
        genre: Faker::Book.genre,
        quantity: rand(3..8),
        image: imagesArray.sample,
        description: Faker::TvShows::Community.quotes
        )
end

10.times do 

    Order.create(
        customer_id: Customer.all.sample.id,
        book_id: Book.all.sample.id
    )

end

puts "✅ Done seeding!"
