class RemoveWeightFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :weight, :integer
    remove_column :dogs, :age_group, :string
    remove_column :dogs, :description, :string
    remove_column :dogs, :altered, :boolean
    remove_column :dogs, :dog_friendly, :boolean
    remove_column :dogs, :kid_friendly, :boolean
    remove_column :dogs, :cat_friendly, :boolean
    remove_column :dogs, :has_special_needs, :boolean
    remove_column :dogs, :special_needs_desc, :string
  end
end
