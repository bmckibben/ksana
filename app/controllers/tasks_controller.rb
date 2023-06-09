class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:user_id, :name, :project_id, :notes, :status_id)
    end

end
