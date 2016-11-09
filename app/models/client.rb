# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  address    :text
#

class Client < ActiveRecord::Base
  has_many :projects

  validates_presence_of :name, :address

  def project_count
    projects.count
  end
end
