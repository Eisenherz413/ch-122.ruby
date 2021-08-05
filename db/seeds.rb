Image.create!([
  {name: "1", path: "1.jpg"},
  {name: "2", path: "2.jpg"},
  {name: "3", path: "3.jpg"},
  {name: "4", path: "4.jpg"},
  {name: "5", path: "5.jpg"},
  {name: "6", path: "6.jpg"},
  {name: "7", path: "7.jpg"},
  {name: "8", path: "8.jpg"},
  {name: "9", path: "9.jpg"},
  {name: "10", path: "10.jpg"},
  {name: "main-page-image", path: "main-page-image.jpg"}
])
Service.create!([
  {name: "Wi-FI", description: "Example", icon_url: "Icons/wifi.png"},
  {name: "TV", description: "", icon_url: "Icons/tv.png"},
  {name: "Refrigerator", description: "Example", icon_url: "Icons/fridge.png"},
  {name: "Hair dryer", description: "", icon_url: "Icons/hairdryer.png"},
  {name: "Mini bar", description: "Example", icon_url: "Icons/bar.png"},
  {name: "Safe", description: "", icon_url: "Icons/safe.png"},
  {name: "Electric kettle", description: "", icon_url: "Icons/kettle.png"},
  {name: "Air conditioner", description: "", icon_url: "Icons/conditioner.png"}
])
RoomService.create!([
  {room_id: 1, service_id: 1},
  {room_id: 2, service_id: 2},
  {room_id: 1, service_id: 2},
  {room_id: 1, service_id: 3},
  {room_id: 3, service_id: 4},
  {room_id: 3, service_id: 5},
  {room_id: 2, service_id: 6},
  {room_id: 1, service_id: 8},
  {room_id: 2, service_id: 4},
  {room_id: 4, service_id: 2},
  {room_id: 4, service_id: 3},
  {room_id: 5, service_id: 8},
  {room_id: 4, service_id: 1},
  {room_id: 5, service_id: 2},
  {room_id: 5, service_id: 6},
  {room_id: 6, service_id: 4},
  {room_id: 6, service_id: 4},
  {room_id: 7, service_id: 5},
  {room_id: 7, service_id: 7},
  {room_id: 3, service_id: 3},
  {room_id: 1, service_id: 4},
  {room_id: 1, service_id: 5},
  {room_id: 3, service_id: 6},
  {room_id: 2, service_id: 7},
  {room_id: 2, service_id: 8},
  {room_id: 3, service_id: 8},
  {room_id: 1, service_id: 7}
])
User.create!([
  {full_name: "test", email: "test", role: nil, status: nil},
  {full_name: "user1", email: "user@gmail.com", role: nil, status: nil}
])
Category.create!([
                   {name: 0, description: 'You can leave a word of advice in this section, help us to become even better!'},
                   {name: 1, description: 'In this section you can report any kind of breakdown in your room'},
                   {name: 2, description: 'If you have something you want us to react quickly, please type it here'},
                   {name: 3, description: ''}
                 ])
Issue.create!([
  {category_id: 1, user_id: 1, text: "example", status: "opened"}
])
Room.create!([
  {capacity: 2, price: 3.99, number: "34a", title: "Twin Guest Room", slug: nil},
  {capacity: 4, price: 5.0, number: "34t", title: "King Guest Room", slug: nil},
  {capacity: 4, price: 3.0, number: "3", title: "King Deluxe Room", slug: nil},
  {capacity: 3, price: 4.99, number: "23", title: "Twin Guest Room", slug: nil},
  {capacity: 1, price: 5.0, number: "11", title: "King Guest Room", slug: nil},
  {capacity: 2, price: 2.5, number: "30b", title: "King Deluxe Room", slug: nil},
  {capacity: 3, price: 4.99, number: "56", title: "Twin Guest Room", slug: nil}
])
RoomImage.create!([
  {room_id: "1.0", image_id: "1.0", purpose: "cover"},
  {room_id: "2.0", image_id: "2.0", purpose: "cover"},
  {room_id: "3.0", image_id: "3.0", purpose: "cover"},
  {room_id: "1.0", image_id: "3.0", purpose: nil},
  {room_id: "1.0", image_id: "4.0", purpose: nil},
  {room_id: "1.0", image_id: "5.0", purpose: nil},
  {room_id: "2.0", image_id: "6.0", purpose: nil},
  {room_id: "2.0", image_id: "7.0", purpose: nil},
  {room_id: "3.0", image_id: "8.0", purpose: nil},
  {room_id: "3.0", image_id: "9.0", purpose: nil},
  {room_id: "2.0", image_id: "4.0", purpose: nil},
  {room_id: "4.0", image_id: "8.0", purpose: "cover"},
  {room_id: "4.0", image_id: "2.0", purpose: nil},
  {room_id: "4.0", image_id: "3.0", purpose: nil},
  {room_id: "5.0", image_id: "3.0", purpose: "cover"},
  {room_id: "5.0", image_id: "4.0", purpose: nil},
  {room_id: "5.0", image_id: "5.0", purpose: nil},
  {room_id: "6.0", image_id: "6.0", purpose: "cover"},
  {room_id: "6.0", image_id: "7.0", purpose: nil},
  {room_id: "6.0", image_id: "8.0", purpose: nil},
  {room_id: "7.0", image_id: "9.0", purpose: "cover"},
  {room_id: "7.0", image_id: "4.0", purpose: nil},
  {room_id: "7.0", image_id: "10.0", purpose: nil},
  {room_id: "3.0", image_id: "1.0", purpose: nil},
  {room_id: "5.0", image_id: "9.0", purpose: nil},
  {room_id: "4.0", image_id: "3.0", purpose: nil},
  {room_id: "6.0", image_id: "4.0", purpose: nil},
  {room_id: "7.0", image_id: "2.0", purpose: nil}
])
Feedback.create!([
  {text: "example", user_id: 1, stars: "4.0"}
])
Order.create!([{check_in: "2021-07-02 17:00", check_out: "2021-07-05 17:00", total_price: 100, room_id: 1, user_id: 1, status: 0},
               {check_in: "2021-07-01 12:00", check_out: "2021-07-04 12:00", total_price: 150, room_id: 2, user_id: 2, status: 1},
               {check_in: "2021-07-15 16:00", check_out: "2021-07-20 16:00", total_price: 200, room_id: 3, user_id: 1, status: 2},
               {check_in: "2021-07-20 17:00", check_out: "2021-07-25 17:00", total_price: 100, room_id: 2, user_id: 2, status: 3},
               {check_in: "2021-07-20 17:00", check_out: "2021-07-25 17:00", total_price: 100, room_id: 2, user_id: 2, status: 4},
               {check_in: "2021-07-20 17:00", check_out: "2021-07-25 17:00", total_price: 100, room_id: 1, user_id: 2, status: 1}
              ])
