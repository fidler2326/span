class AddProjectRateToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_rate, :integer
  end
end
