json.extract! login, :id, :email, :created_at, :updated_at
json.url login_url(login, format: :json)
