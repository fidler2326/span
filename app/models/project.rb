class Project < ActiveRecord::Base
  belongs_to :client
  has_many :time_entries

  def total_hours
    total_hours = 0
    time_entries.each do |time|
      total_hours = total_hours + time.hours
    end
    return total_hours
  end

  def project_total
    project_rate * total_hours
  end
end
