class SecondaryScore < ApplicationRecord
    belongs_to :bookmark_a, :class_name => :Bookmark
    belongs_to :bookmark_b, :class_name => :Bookmark

    validates :id, uniqueness: true 
end
