class RenameNotificationAdoptersToNotifications < ActiveRecord::Migration[6.0]
  def change
    rename_table :notification_adopters, :notifications
  end
end
