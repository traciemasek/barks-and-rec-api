class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :img1
      t.string :img2
      t.string :img3
      t.integer :weight
      t.string :size
      t.string :age
      t.string :age_group
      t.string :description
      t.string :foster
      t.boolean :altered
      t.boolean :dog_friendly
      t.boolean :kid_friendly
      t.boolean :cat_friendly
      t.boolean :has_special_needs
      t.string :special_needs_desc
      t.boolean :adopted, default: false

      t.timestamps
    end
  end
end
