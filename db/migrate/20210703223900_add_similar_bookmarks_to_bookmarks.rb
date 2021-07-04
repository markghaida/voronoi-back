class AddSimilarBookmarksToBookmarks < ActiveRecord::Migration[6.1]
  def change
    enable_extension "hstore"
    add_column :bookmarks, :similar_bookmarks, :json
  end
end
