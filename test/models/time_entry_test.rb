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

require 'test_helper'

class TimeEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
