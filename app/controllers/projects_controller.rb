class ProjectsController < InheritedResources::Base

  private

    def project_params
      params.require(:project).permit(:user_id, :name, :due_at, :description, :status_id, :product_id)
    end

end
