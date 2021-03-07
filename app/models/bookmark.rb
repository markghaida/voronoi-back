class Bookmark < ApplicationRecord
    belongs_to :user 
    has_many :bookmark_tags 
    has_many :tags, through: :bookmark_tags 

    validates :url, uniqueness: true 

# When someone is searching, the search input should be analyzed and
# checked to see if there is a match with either a tag, h1, url, or body
# grades for each attribute match:
  # tag - 40
  # h1 - 30
  # body - 20
  # url - 10
# 
# condition logic should if tag.includes(searchinput){
#  grade += 30 
# }
# and the rest of the attributes do the same

# create a method that takes in the search input  
def self.graded_bookmarks(searchInput)
    # byebug
# goes through a for loop of all the bookmarks,
    all_bookmarks = Bookmark.all.each do |bookmark|
        # set the bookmark.score = 0 at the top of this method, then
        bookmark.score = 0 
        # with if conditions to determine if the search input is contained
        # in any of the attributes for that particular bookmark, if it is, 
        # each attribute it is contained in will update the score based on 
        byebug
        if bookmark.tags[0].category_name.downcase.include?(searchInput.downcase)
            byebug
            bookmark.score += 40
            
        elsif bookmark.h1.downcase.include?(searchInput.downcase)
            byebug
            bookmark.score += 30 
        elsif bookmark.body.downcase.include?(searchInput.downcase)
            byebug
            bookmark.score += 20
        elsif bookmark.url.downcase.include?(searchInput.downcase)
            byebug
            bookmark.score += 10
        end
        #yellow
        # a certain grade. when we have a final score for each bookmark,
    end
    # we want to sort from highest to lowest score, and then
    # we want to take the highest scores and plot them on certain bubbles
    # byebug
    sorted_bookmarks = all_bookmarks.sort_by(&:score).reverse
    # byebug
    return sorted_bookmarks
    # closer in proximity to the search bar, and the lesser scores 
    # on the perimeters 
end



end
