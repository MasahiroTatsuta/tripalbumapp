class AddVideosToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :video, :string
  end
end
