class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :adopter, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :why_adopt

      t.timestamps
    end
  end
end
