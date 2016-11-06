class Client < ActiveRecord::Base
  has_many :projects

  def project_count
    projects.count
  end
end
