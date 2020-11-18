class AddVideosToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :video, :string
  end
end
