json.extract! room, :id, :capacity, :price, :number, :created_at, :updated_at
json.url room_url(room, format: :json)
