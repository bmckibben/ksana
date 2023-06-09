json.extract! task, :id, :user_id, :name, :project_id, :notes, :status_id, :created_at, :updated_at
json.url task_url(task, format: :json)
