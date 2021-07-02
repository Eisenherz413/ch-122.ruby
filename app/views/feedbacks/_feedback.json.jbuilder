json.extract! feedback, :id, :text, :user_id, :stars, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
