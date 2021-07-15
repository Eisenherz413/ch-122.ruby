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
Room.create!([
  {capacity: 2, price: 3, number: "34a", title: "Twin Guest Room"},
  {capacity: 4, price: 5, number: "34t", title: "King Guest Room"},
  {capacity: 4, price: 3, number: "3", title: "King Deluxe Room"}
])
Service.create!([
  {name: "WIFI", description: "Example", icon_url: "Icons/iron.png"},
  {name: "TV", description: "", icon_url: "Icons/iron.png"},
  {name: "Refrigerator", description: "Example",icon_url: "Icons/iron.png"},
  {name: "Hair dryer", description: "", icon_url: "Icons/iron.png"},
  {name: "Mini bar", description: "Example", icon_url: "Icons/iron.png"},
  {name: "Safe", description: "", icon_url: "Icons/iron.png"},
  {name: "Electric kettle", description: "", icon_url: "Icons/iron.png"},
  {name: "Air conditioner", description: "", icon_url: "Icons/iron.png"}
])
Category.create!([
  {name: "Fix", description: "Description"}
])
RoomService.create!([
  {room_id: 1, service_id: 73},
  {room_id: 2, service_id: 74},
  {room_id: 1, service_id: 75},
  {room_id: 1, service_id: 76},
  {room_id: 3, service_id: 77},
  {room_id: 3, service_id: 78},
  {room_id: 2, service_id: 79},
  {room_id: 3, service_id: 80},
  {room_id: 1, service_id: 79},
  {room_id: 2, service_id: 77}
])
User.create!([
  {full_name: "test", email: "test", role: nil, status: nil},
  {full_name: "user1", email: "user@gmail.com", role: nil, status: nil}
])
Issue.create!([
  {category_id: 1, user_id: 1, text: "example", status: "opened"}
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
  {room_id: "3.0", image_id: "10.0", purpose: nil}
])
Feedback.create!([
  {text: "example", user_id: 1, stars: "4.0"}
])
