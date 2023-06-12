class Log < ApplicationRecord
  belongs_to :user

  def task_name
  	task = Task.find(self.task_id)
  	task.name
  end
end
