class AddAboutToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :color, :string
    add_column :dogs, :about, :string
    add_column :dogs, :houseTrained, :boolean
    add_column :dogs, :health, :string
    add_column :dogs, :goodHome, :string
    add_column :dogs, :badHome, :string
  end
end
