class AddMapToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title, :string, null: false
    add_column :posts, :text, :text, null: false
    add_column :posts, :address, :string, null: false
    add_column :posts, :latitude, :float, null: false
    add_column :posts, :longitude, :float, null: false
  end
end
