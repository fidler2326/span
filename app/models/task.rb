# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_name  :string
#  project_id :integer
#

class Task < ActiveRecord::Base
  belongs_to :project
end
