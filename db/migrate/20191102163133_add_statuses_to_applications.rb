class AddStatusesToApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :submitted, :boolean, default: true
    add_column :applications, :initial_review, :boolean, default: false
    add_column :applications, :references, :boolean, default: false
    add_column :applications, :home_visit, :boolean, default: false
    add_column :applications, :final_approval, :boolean, default: false
  end
end
