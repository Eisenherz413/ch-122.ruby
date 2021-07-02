json.extract! issue, :id, :category_id, :user_id, :text, :status, :created_at, :updated_at
json.url issue_url(issue, format: :json)
