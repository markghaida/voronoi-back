class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :url, :h1, :image, :body, :score,:user_id 

  belongs_to :user 
  has_many :bookmark_tags 
  has_many :tags, through: :bookmark_tags 
  
end
