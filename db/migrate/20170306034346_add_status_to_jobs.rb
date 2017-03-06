class AddStatusToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :status, :boolean, default: false
  end
end
