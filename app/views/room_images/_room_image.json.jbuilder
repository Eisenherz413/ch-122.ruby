json.extract! room_image, :id, :room_id, :image_id, :created_at, :updated_at
json.url room_image_url(room_image, format: :json)
