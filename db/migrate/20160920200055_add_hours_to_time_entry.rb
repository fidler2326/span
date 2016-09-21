class AddHoursToTimeEntry < ActiveRecord::Migration
  def change
    add_column :time_entries, :hours, :integer
  end
end
