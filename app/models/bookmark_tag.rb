class BookmarkTag < ApplicationRecord
    belongs_to :tag
    belongs_to :bookmark
end
