class AddNamesToAdopters < ActiveRecord::Migration[6.0]
  def change
    add_column :adopters, :first_name, :string
    add_column :adopters, :last_name, :string
  end
end
