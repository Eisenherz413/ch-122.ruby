User.create!([
  {full_name: "Vasyanovych Olya", email: "vasyanovych30@gmail.com", role: "manager", status: nil, encrypted_password: "$2a$12$GoUKh6Z3x0Z4Bz8cNNaAIuipshfvjKvj1oASaFWASw9pGUIUiBNii", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {full_name: "Chernaya Sophiia", email: "chernaya.sofiia@gmail.com", role: "manager", status: nil, encrypted_password: "$2a$12$wjf3g8TQoVW1cgO6ohjIBeglfFhct5K9dX9bUz2Ibhyv8eb9oARge", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {full_name: "Masiian Anastasiia", email: "anastass413@gmail.com", role: "manager", status: nil, encrypted_password: "$2a$12$RKwfzAmUStzbpfewNf1KAushIv4kn6Pi/KAf1esZUfLxB3Okj7xDy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil},
  {full_name: "Test User", email: "test_user@gmail.com", role: "user", status: nil, encrypted_password: "$2a$12$RuRmLgY2/lmtXwCQee4LyOcyOqeIrqf.ildW8kLM7OXdUPC8Ms9D6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil}
])
Feedback.create!([
  {text: "example", user_id: 1, stars: "4.0"}
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
Issue.create!([
  {category_id: 1, user_id: 1, text: "example", status: "opened"}
])
Room.create!([
  {capacity: 2, price: 3.0, number: "34a", title: "Twin Guest Room", slug: nil},
  {capacity: 4, price: 5.0, number: "34t", title: "King Guest Room", slug: nil},
  {capacity: 4, price: 3.0, number: "3", title: "King Deluxe Room", slug: nil}
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
RoomService.create!([
  {room_id: 1, service_id: 1},
  {room_id: 2, service_id: 2},
  {room_id: 1, service_id: 2},
  {room_id: 1, service_id: 3},
  {room_id: 3, service_id: 4},
  {room_id: 3, service_id: 5},
  {room_id: 2, service_id: 6},
  {room_id: 3, service_id: 7},
  {room_id: 2, service_id: 4}
])
Service.create!([
  {name: "TV", description: "", icon_url: nil},
  {name: "Refrigerator", description: "Example", icon_url: nil},
  {name: "Hair dryer", description: "", icon_url: nil},
  {name: "Mini bar", description: "Example", icon_url: nil},
  {name: "Safe", description: "", icon_url: nil},
  {name: "Air conditioner", description: "", icon_url: nil},
  {name: "Wi-FI", description: "Example", icon_url: "Icons/wifi.png"}
])
Category.create!([
  {name: "Advice", description: "You can leave a word of advice in this section, help us to become even better!"},
  {name: "Breakage", description: "In this section, you can report any kind of breakdown in your room!"},
  {name: "Urgent", description: "If you have something you want us to react quickly, please type it here!"},
  {name: "Other", description: ""}
])
