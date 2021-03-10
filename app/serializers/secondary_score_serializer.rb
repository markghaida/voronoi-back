class SecondaryScoreSerializer < ActiveModel::Serializer
  attributes :id, :bookmark_a_id, :bookmark_b_id, :score

  belongs_to :bookmark
  
end
