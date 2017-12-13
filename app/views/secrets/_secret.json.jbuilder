json.extract! secret, :id, :secret, :created_at, :updated_at
json.url secret_url(secret, format: :json)
