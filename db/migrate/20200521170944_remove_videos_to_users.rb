class RemoveVideosToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :video, :string
  end
end
