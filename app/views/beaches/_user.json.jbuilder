json.extract! user, :id, :name, :lat, :lng, :created_at, :updated_at
json.url user_url(user, format: :json)
