json.extract! order, :id, :check_in, :check_out, :total_price, :room_id, :user_id, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
