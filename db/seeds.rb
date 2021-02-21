# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.create([
  {
    username: "Casee-A",
    email: "casee@gmail.com",
    password: "password",
    first_name: "Casee",
    last_name: "Amores",
    image_url: "https://immedilet-invest.com/wp-content/uploads/2016/01/user-placeholder.jpg"
  },
  {
    username: "Harry-P",
    email: "harry@gmail.com",
    password: "password",
    first_name: "Harry",
    last_name: "Potter",
    image_url: "https://immedilet-invest.com/wp-content/uploads/2016/01/user-placeholder.jpg"
  },
  {
    username: "Hermione-G",
    email: "hermione@gmail.com",
    password: "password",
    first_name: "Hermione",
    last_name: "Granger",
    image_url: "https://immedilet-invest.com/wp-content/uploads/2016/01/user-placeholder.jpg"
  }
])

Friendship.create([
  {
    requestor_id: 1,
    requestee_id: 2,
    status: "pending"
  },
  {
    requestor_id: 3,
    requestee_id: 1,
    status: "accepted"
  },
  {
    requestor_id: 3,
    requestee_id: 2,
    status: "accepted"
  }
])

Category.create([
  { name: "Video Games" },
  { name: "Board Games" },
  { name: "Outdoor" },
  { name: "Movies and TV" },
  { name: "Clothes" },
  { name: "Appliances" }
])

Item.create([
  {
    name: "Mario Kart 8 Deluxe",
    user_id: 1,
    image_url: "https://images-na.ssl-images-amazon.com/images/I/91KQmjDxj-L._SY679_.jpg",
    category_id: 1,
    available: true
  },
  {
    name: "Settlers of Catan",
    user_id: 1,
    image_url: "https://www.catan.com/files/styles/lightboxy/public/gallery/dye_catan_150407_0564.jpg",
    category_id: 2,
    available: true
  },
  {
    name: "Settlers of Catan - Seafarers Expansion",
    user_id: 1,
    image_url: "https://www.catan.com/files/styles/lightboxy/public/packshots/catan-seafarers-game-expansion_0.png",
    category_id: 2,
    available: false
  },
  {
    name: "Hiking Boots, Size 8",
    user_id: 2,
    image_url: "https://www.rei.com/media/085e0fcb-56f6-4c9c-9aa1-bd5abf7a036c",
    category_id: 5,
    available: true
  },
  {
    name: "2-Person Tent",
    user_id: 2,
    image_url: "https://images-na.ssl-images-amazon.com/images/I/71qpqr3iiJL._AC_SX425_.jpg",
    category_id: 3,
    available: true
  },
  {
    name: "Avatar: The Last Airbender - The Complete Series (Bluray)",
    user_id: 3,
    image_url: "https://images.static-bluray.com/movies/covers/199969_large.jpg",
    category_id: 4,
    available: true
  },
  {
    name: "The Legend of Korra - The Complete Series (Bluray)",
    user_id: 3,
    image_url: "https://i5.walmartimages.com/asr/b46ad187-0f26-4a40-8e39-1853a73c2c95_1.1c4b0f0c011a99ad977a5e41fdc1280b.jpeg",
    category_id: 4,
    available: false
  }
])

BorrowRequest.create([
  {
    requestor_id: 1,
    item_id: 7,
    status: "returned"
  },
  {
    requestor_id: 3,
    item_id: 3,
    status: "accepted"
  },
  {
    requestor_id: 2,
    item_id: 7,
    status: "accepted"
  },
  {
    requestor_id: 1,
    item_id: 6,
    status: "pending"
  },
  {
    requestor_id: 3,
    item_id: 1,
    status: "pending"
  },
])