class TimeEntriesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @time_entry = TimeEntry.new
    @projects = Project.all
  end

  def create
    @time_entry = TimeEntry.new(time_entry_params)

    @time_entry.save
    redirect_to action: "index"
  end

  private
    def time_entry_params
      params.require(:time_entry).permit(:hours, :project_id)
    end
end
