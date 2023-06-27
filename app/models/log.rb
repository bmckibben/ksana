class Log < ApplicationRecord
  belongs_to :user

  def task_name
  	task = Task.find(self.task_id)
  	task.name
  end

	def elapsed(start_time: self.start_at, end_time: self.end_at)
	  seconds_diff = (end_time - start_time).to_i

	  hours = seconds_diff / 3600
	  seconds_diff -= hours * 3600

	  minutes = seconds_diff / 60
	  seconds_diff -= minutes * 60

	  seconds = seconds_diff

	  "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"

	end

end
