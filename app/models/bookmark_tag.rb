class BookmarkTag < ApplicationRecord
    belongs_to :tag
    belongs_to :bookmark

    validates :bookmark_id, uniqueness: true 
end
