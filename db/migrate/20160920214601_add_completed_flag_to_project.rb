class AddCompletedFlagToProject < ActiveRecord::Migration
  def change
    add_column :projects, :complete, :boolean
  end
end
