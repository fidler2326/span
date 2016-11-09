# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  name         :string
#  client_id    :integer
#  complete     :boolean
#  project_rate :integer
#  budget       :integer
#  end_date     :date
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
