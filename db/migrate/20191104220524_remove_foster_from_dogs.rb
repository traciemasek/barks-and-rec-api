class RemoveFosterFromDogs < ActiveRecord::Migration[6.0]
  def change

    remove_column :dogs, :foster, :string
  end
end
