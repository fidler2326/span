class AddRateToProject < ActiveRecord::Migration
  def change
    add_column :projects, :rate, :integer
  end
end
