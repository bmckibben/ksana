json.extract! product, :id, :name, :client_id, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
