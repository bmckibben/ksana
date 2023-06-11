class LogsController < InheritedResources::Base

  before_action :set_log, only: [:show, :edit, :update, :destroy]

  def index
    @logs = Log.all
  end

  def show
  end

  def new
    @log = Log.new(user_id: current_user.id)
  end

  def create
    @log = Log.new(log_params)

    if @log.save
      redirect_to logs_path, notice: "Log was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @log.update(log_params)
      redirect_to logs_path, notice: "Log was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @log.destroy
    redirect_to logs_path, notice: "Log was successfully destroyed."
  end

  private

  def set_log
    @log = Log.find(params[:id])
  end

  def log_params
    params.require(:log).permit(:user_id, :start_at, :end_at, :notes, :description, :task_id, "notes")
  end
end