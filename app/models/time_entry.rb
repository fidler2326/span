# == Schema Information
#
# Table name: time_entries
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hours      :integer
#  project_id :integer
#  task_id    :integer
#

class TimeEntry < ActiveRecord::Base
  belongs_to :project
  belongs_to :task
end
