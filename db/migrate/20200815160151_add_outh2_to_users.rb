class AddOuth2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :meta, :string
  end
end
