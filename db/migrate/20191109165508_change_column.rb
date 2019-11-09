class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :dogs, :houseTrained, :string
  end
end
