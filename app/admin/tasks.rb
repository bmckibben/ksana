ActiveAdmin.register Task do
	permit_params :user_id, :project_id, :status_id, :name, :notes, :priority
end