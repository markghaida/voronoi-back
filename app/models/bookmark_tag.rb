class BookmarkTag < ApplicationRecord
    belongs_to :tag
    belongs_to :bookmark

    validates :bookmark_id, uniqueness: { scope: :tag_id }
end
