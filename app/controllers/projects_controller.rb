class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def new
    @project = Project.new
    @clients = Client.all
  end

  def edit
    @project = Project.find(params[:id])
    @clients = Client.all
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    # @time_entries = Project.find(params[:id]).time_entries.joins(:task).group(:id)
    @time_entries = Project.find(params[:id]).time_entries
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show"   # Excluding ".pdf" extension.
      end
    end
  end

  def create
    @project = Project.new(project_params)

    @project.save
    redirect_to action: "index"
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to action: "index"
  end

  private
    def project_params
      params.require(:project).permit(:name, :project_rate, :budget, :end_date, :complete, :client_id, tasks_attributes: [:id, :task_name, :_destroy])
    end
end
