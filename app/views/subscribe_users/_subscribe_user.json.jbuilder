json.extract! subscribe_user, :id, :name, :prefix, :email, :created_at, :updated_at
json.url subscribe_user_url(subscribe_user, format: :json)
