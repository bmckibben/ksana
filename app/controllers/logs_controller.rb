class LogsController < InheritedResources::Base

  private

    def log_params
      params.require(:log).permit(:user_id, :start_at, :end_at, :notes)
    end

end
