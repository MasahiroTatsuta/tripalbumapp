class AddTextToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :text, :string
  end
end
