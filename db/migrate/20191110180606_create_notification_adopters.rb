class CreateNotificationAdopters < ActiveRecord::Migration[6.0]
  def change
    create_table :notification_adopters do |t|
      t.belongs_to :adopter, null: false, foreign_key: true
      t.boolean :read, default: false
      t.string :message

      t.timestamps
    end
  end
end
