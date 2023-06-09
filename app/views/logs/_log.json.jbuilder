json.extract! log, :id, :user_id, :start_at, :end_at, :notes, :created_at, :updated_at
json.url log_url(log, format: :json)
