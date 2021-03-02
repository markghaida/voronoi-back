class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :url, :h1, :image, :body, :user_id

  belongs_to :user 
  has_many :bookmark_tags 
  
end
