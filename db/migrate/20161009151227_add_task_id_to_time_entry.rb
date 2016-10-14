class AddTaskIdToTimeEntry < ActiveRecord::Migration
  def change
    add_column :time_entries, :task_id, :integer
  end
end
