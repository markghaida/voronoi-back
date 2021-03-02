class Bookmark < ApplicationRecord
    belongs_to :user 
    has_many :bookmark_tags 
end
