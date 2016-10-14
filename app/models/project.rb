class Project < ActiveRecord::Base
  belongs_to :client
  has_many :time_entries
  has_many :tasks
  
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true


  def total_hours
    total_hours = 0
    time_entries.each do |time|
      total_hours = total_hours + time.hours
    end
    return total_hours
  end

  def total_days
    total_days = budget / 8
  end

  def project_total
    project_rate * total_hours
  end

  def total_percent
    ((total_hours.to_f/budget.to_f) * 100).to_i
  end

  def remaining_percent
    100 - ((total_hours.to_f/budget.to_f) * 100).to_i
  end

end
