class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :bookmarks 
  has_many :bookmark_tags, through: :bookmarks  
end
