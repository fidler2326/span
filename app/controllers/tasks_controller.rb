class TasksController < ApplicationController
  def index
    @tasks = Project.find(params[:project_id]).tasks
    respond_to do |format|
      format.html
      format.json {render json: @tasks}
    end
  end
end
