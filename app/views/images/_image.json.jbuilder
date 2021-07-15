json.extract! image, :id, :name, :path, :type, :created_at, :updated_at
json.url image_url(image, format: :json)
