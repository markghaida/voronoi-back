class BookmarkTagSerializer < ActiveModel::Serializer
  attributes :id, :bookmark_id, :tag_d

  belongs_to :tag
  belongs_to :bookmark_tag 
end
