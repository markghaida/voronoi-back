class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :image
      t.string :h1
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
