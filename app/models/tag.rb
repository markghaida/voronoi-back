class Tag < ApplicationRecord
    has_many :bookmark_tags 
    has_many :bookmarks, through: :bookmark_tags

    validates :category_name, uniqueness: true 
    validates :id, uniqueness: true 
end
