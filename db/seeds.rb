User.create!([
{full_name: "Vasyanovych Olya", email: "vasyanovych30@gmail.com", role: "manager", status: nil, encrypted_password: "$2a$12$GoUKh6Z3x0Z4Bz8cNNaAIuipshfvjKvj1oASaFWASw9pGUIUiBNii", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
{full_name: "Chernaya Sophiia", email: "chernaya.sofiia@gmail.com", role: "manager", status: nil, encrypted_password: "$2a$12$wjf3g8TQoVW1cgO6ohjIBeglfFhct5K9dX9bUz2Ibhyv8eb9oARge", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
{full_name: "Masiian Anastasiia", email: "anastass413@gmail.com", role: "manager", status: nil, encrypted_password: "$2a$12$RKwfzAmUStzbpfewNf1KAushIv4kn6Pi/KAf1esZUfLxB3Okj7xDy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
{full_name: "Test User", email: "test_user@gmail.com", role: "user", status: nil, encrypted_password: "$2a$12$RuRmLgY2/lmtXwCQee4LyOcyOqeIrqf.ildW8kLM7OXdUPC8Ms9D6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil}
])
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
RoomImage.create!([
  {room_id: 1, image_id: 1, purpose: "cover"},
  {room_id: 2, image_id: 2, purpose: "cover"},
  {room_id: 3, image_id: 3, purpose: "cover"},
  {room_id: 1, image_id: 3, purpose: nil},
  {room_id: 1, image_id: 4, purpose: nil},
  {room_id: 1, image_id: 5, purpose: nil},
  {room_id: 2, image_id: 6, purpose: nil},
  {room_id: 2, image_id: 7, purpose: nil},
  {room_id: 3, image_id: 8, purpose: nil},
  {room_id: 3, image_id: 9, purpose: nil},
  {room_id: 2, image_id: 4, purpose: nil},
  {room_id: 4, image_id: 8, purpose: "cover"},
  {room_id: 4, image_id: 2, purpose: nil},
  {room_id: 4, image_id: 3, purpose: nil},
  {room_id: 5, image_id: 3, purpose: "cover"},
  {room_id: 5, image_id: 4, purpose: nil},
  {room_id: 5, image_id: 5, purpose: nil},
  {room_id: 6, image_id: 6, purpose: "cover"},
  {room_id: 6, image_id: 7, purpose: nil},
  {room_id: 6, image_id: 8, purpose: nil},
  {room_id: 7, image_id: 9, purpose: "cover"},
  {room_id: 7, image_id: 4, purpose: nil},
  {room_id: 7, image_id: 10, purpose: nil},
  {room_id: 3, image_id: 1, purpose: nil},
  {room_id: 5, image_id: 9, purpose: nil},
  {room_id: 4, image_id: 3, purpose: nil},
  {room_id: 6, image_id: 4, purpose: nil},
  {room_id: 7, image_id: 2, purpose: nil}
])
Issue.create!([
  {category_id: 1, user_id: 1, text: "example", status: "opened"}
])
Order.create!([
  {check_in: "2021-07-02", check_out: "2021-07-05", total_price: 100.0, room_id: 1, user_id: 1, status: "processed"},
  {check_in: "2021-07-01", check_out: "2021-07-04", total_price: 150.0, room_id: 2, user_id: 2, status: "confirmed"},
  {check_in: "2021-07-15", check_out: "2021-07-20", total_price: 200.0, room_id: 3, user_id: 1, status: "completed"},
  {check_in: "2021-07-20", check_out: "2021-07-25", total_price: 100.0, room_id: 2, user_id: 2, status: "cancelled"},
  {check_in: "2021-07-20", check_out: "2021-07-25", total_price: 100.0, room_id: 2, user_id: 2, status: nil},
  {check_in: "2021-07-20", check_out: "2021-07-25", total_price: 100.0, room_id: 1, user_id: 2, status: "confirmed"}
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
Feedback.create!([
  {text: "example", user_id: 1, stars: 4}
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
Category.create!([
  {name: "Advice", description: "You can leave a word of advice in this section, help us to become even better!"},
  {name: "Breakage", description: "In this section you can report any kind of breakdown in your room"},
  {name: "Urgent", description: "If you have something you want us to react quickly, please type it here"},
  {name: "Other", description: ""}
])
