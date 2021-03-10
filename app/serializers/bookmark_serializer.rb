class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :url, :h1, :image, :body, :score,:user_id 

  belongs_to :user 
  # belongs_to :secondary_score

  has_many(:secondary_scores, foreign_key: :bookmark_a_id, dependent: :destroy)
  has_many(:reverse_secondary_scores, class_name: :SecondaryScore,
    foreign_key: :bookmark_b_id, dependent: :destroy)

  has_many :bookmarks, through: :secondary_scores, source: :bookmark_b


  has_many :bookmark_tags 
  has_many :tags, through: :bookmark_tags 
  
end
