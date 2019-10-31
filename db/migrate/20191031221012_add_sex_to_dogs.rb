class AddSexToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :sex, :string
  end
end
