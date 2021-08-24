Service.create!([
                  {name: "WIFI", description: "Example", icon_url: "Icons/wifi.png"},
                  {name: "TV", description: "", icon_url: "Icons/tv.png"},
                  {name: "Refrigerator", description: "Example",icon_url: "Icons/fridge.png"},
                  {name: "Hair dryer", description: "", icon_url: "Icons/hairdryer.png"},
                  {name: "Mini bar", description: "Example", icon_url: "Icons/bar.png"},
                  {name: "Safe", description: "", icon_url: "Icons/safe.png"},
                  {name: "Electric kettle", description: "", icon_url: "Icons/kettle.png"},
                  {name: "Air conditioner", description: "", icon_url: "Icons/conditioner.png"}
                ])
rooms = Room.create!([
  {capacity: 2, price: 300, number: "34a", title: "Twin Guest Room"},
  {capacity: 3, price: 500, number: "34t", title: "King Guest Room"},
  {capacity: 3, price: 350, number: "A-9", title: "King Deluxe Room"}
])
rooms.each do |room|
  room.cover.attach(io: File.open('app/assets/images/2.jpg'), filename: '2.jpg')
  room.images.attach(io: File.open('app/assets/images/3.jpg'), filename: '3.jpg')
  room.images.attach(io: File.open('app/assets/images/4.jpg'), filename: '4.jpg')
  room.images.attach(io: File.open('app/assets/images/5.jpg'), filename: '5.jpg')
  room.images.attach(io: File.open('app/assets/images/7.jpg'), filename: '7.jpg')
  room.services << Service.find(1)
  room.services << Service.find(2)
  room.services << Service.find(3)
end


User.create!([
  {full_name: "test", email: "test@gmail.com", password: "password", role: nil, status: nil},
  {full_name: "user1", email: "user@gmail.com", password: "password",  role: nil, status: nil}
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
Feedback.create!([
  {text: "example", user_id: 2, stars: "4.0"}
                 ])

Order.create!([{check_in: "2021-07-02 17:00", check_out: "2021-07-05 17:00", total_price: 100, room_id: 1, user_id: 1, status: 1},
               {check_in: "2021-07-01 12:00", check_out: "2021-07-04 12:00", total_price: 150, room_id: 2, user_id: 2, status: 1},
               {check_in: "2021-07-15 16:00", check_out: "2021-07-20 16:00", total_price: 200, room_id: 3, user_id: 1, status: 2},
               {check_in: "2021-07-20 17:00", check_out: "2021-07-25 17:00", total_price: 100, room_id: 3, user_id: 2, status: 3},
               {check_in: "2021-07-20 17:00", check_out: "2021-07-25 17:00", total_price: 100, room_id: 1, user_id: 2, status: 4}
              ])
