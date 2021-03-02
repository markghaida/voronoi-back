class CreateBookmarkTags < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmark_tags do |t|
      t.integer :bookmark_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
