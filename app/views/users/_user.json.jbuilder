json.extract! user, :id, :email, :created_at, :updated_at, :discription
json.url user_url(user, format: :json)
