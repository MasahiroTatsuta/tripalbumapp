class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :video, null: false
      t.references :post, foreign_key: true, null: false

      t.timestamps
    end
  end
end
