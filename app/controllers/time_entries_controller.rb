class TimeEntriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @time_entry = TimeEntry.new
    @projects = Project.all
  end

  def edit
    @time_entry = TimeEntry.find(params[:id])
    @projects = Project.all
  end

  def create
    @time_entry = TimeEntry.new(time_entry_params)

    # @time_entry.save
    # redirect_to controller: 'projects'

    respond_to do |format|
      if @time_entry.save
        format.html { redirect_to time_entries_path, notice: 'Time entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @time_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @time_entry = TimeEntry.find(params[:id])

    if @time_entry.update(time_entry_params)
      redirect_to controller: 'projects'
    else
      render 'edit'
    end
  end

  def destroy
    @time_entry = TimeEntry.find(params[:id])
    @time_entry.destroy

    redirect_to action: "index"
  end

  def index
    @time_entries = TimeEntry.all
  end

  private
    def time_entry_params
      params.require(:time_entry).permit(:hours, :project_id, :task_id)
    end
end
