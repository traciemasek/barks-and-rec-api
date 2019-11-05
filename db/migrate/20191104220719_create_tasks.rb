class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :type
      t.boolean :complete, default: false
      t.belongs_to :adopter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
