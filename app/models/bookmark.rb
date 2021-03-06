require 'set'
require 'json'

class Bookmark < ApplicationRecord

    belongs_to :user 
    has_many :bookmark_tags 
    has_many :tags, through: :bookmark_tags
    

    validates :url, uniqueness: true 
    validates :id, uniqueness: true 

    #Idea #3 
        #WHY:

        #Pros:

        #Cons:
    def self.creating_adj_list()
        bookmarks = Bookmark.all
        bookmarks.each do |bookmark|
            # byebug
            adj_list = Set.new
            # first successfully display all similar bookmarks when returning json to front-end
            #test
            #after, throw all the similar bookmarks into a Set and store that set DS into the similar_bookmarks array
            # to the corresponding and related bookmark 
            bookmarks.each do |other_bookmark|
                if bookmark != other_bookmark
                    # byebug 
                    if bookmark.tags && bookmark.tags[0] && other_bookmark.tags && other_bookmark.tags[0] && bookmark.tags[0].category_name.downcase.include?(other_bookmark.tags[0].category_name.downcase)
                        adj_list.add(other_bookmark)
                        # byebug
                    end 
                    
                    if other_bookmark.h1 && bookmark.h1.downcase.include?(other_bookmark.h1.downcase)
                        adj_list.add(other_bookmark)
                        # byebug
                    end
                    
                    if other_bookmark.body && bookmark.body && bookmark.body.downcase.include?(other_bookmark.body.downcase)
                        adj_list.add(other_bookmark)
                        # byebug
                    end 
                    
                    if  other_bookmark.url && bookmark.url && bookmark.url.downcase.include?(other_bookmark.url.downcase)
                        adj_list.add(other_bookmark)
                        # byebug
                    end
                end 
                # byebug
            end
            adj_before_json = { "similar_bookmarks": adj_list}
            adj_json = adj_before_json.to_json 
            # byebug
            bookmark.update(similar_bookmarks: adj_json)
            # byebug
        end
    end 

    def self.graded_bookmarks(searchInput)
        # byebug
        
        # goes through a for loop of all the bookmarks,
        all_bookmarks = Bookmark.all.each do |bookmark|
            # byebug
            # set the bookmark.score = 0 at the top of this method, then
            # goes through a for loop of all the bookmarks,
            bookmark.score = 0 
            # with if conditions to determine if the search input is contained
            # in any of the attributes for that particular bookmark, if it is, 
            # each attribute it is contained in will update the score based on 
            # byebug

            # we want to take the current list of relevant bookmarks, run them through all bookmarks, and create another score  
            #ensure no duplicates 
            #out put should be an array of arrays 
            #compare the current bookmark with the new bookmark and grade based on any matches 
            if bookmark.tags && bookmark.tags[0] && bookmark.tags[0].category_name.downcase.include?(searchInput.downcase)
                bookmark.score += 40
            end 
            
            if bookmark.h1.downcase.include?(searchInput.downcase)
                bookmark.score += 30 
            end
            
            if bookmark.body && bookmark.body.downcase.include?(searchInput.downcase)
                bookmark.score += 20
            end 
            
            if  bookmark.url && bookmark.url.downcase.include?(searchInput.downcase)
                bookmark.score += 10
            # else 
                # create logic to create a bookmark_tag
            end
            #h
            # a certain grade. when we have a final score for each bookmark,
        end
        # we want to sort from highest to lowest score, and then
        # we want to take the highest scores and plot them on certain bubbles
        # byebug
        # all_bookmarks.unshift({searchInput: searchInput})
        sorted_bookmarks = all_bookmarks.sort_by(&:score).reverse

        # HERE WE SHOULD FILTER BY SCORE, THEN ITERATE THROUGH ALL RELEVANT ITEMS
        #AND USE THE MOST APPPROPRIATE DATA STRUCTURE TO STORE ALL OF THOSE ITEMS

        # byebug
        # secondary_score(sorted_bookmarks, all_bookmarks)
        return sorted_bookmarks
        # closer in proximity to the search bar, and the lesser scores 
        # on the perimeters 
    end
end

#----------------------------------#
    #Alternative Idea 
        #WHY:
            #The challenge with my current approach is that the app is relying on logic through the "creating_adj_list" method to create a 
            #relationship between one bookmark to another (to show similarity). This is creating problems such as exponentially slow lookup and bookmark creation time complexity
            #with each additional bookmark added, and it isn't leveraging the database to do the laborious task of establishing relationships  
        #Pros:
            #The pros of this new approach would be a much quicker search and bookmark creation time
        #Cons:
            #Establishing this relationship in the database is a little complicated because it requires a non-traditional self-referential model 


    # has_many(:secondary_scores, foreign_key: :bookmark_a_id, dependent: :destroy)
    # has_many(:reverse_secondary_scores, class_name: :secondary_score,
    #   foreign_key: :bookmark_b_id, dependent: :destroy)
    #c
    # has_many :bookmarks, through: :similar_bookmarks, source: :bookmark_b

#----------------------------------#
def self.create_keywords(page)
    # byebug
    # place where I can improve the time complexity
    # this relationship is currently uni-directional, not bi-directional, will have to fix later 
    
    if !page.meta_tag['name']['keywords']    
        # change the tilda later 
        new_tag = Tag.create(category_name: "~", image: page.images.best)
        BookmarkTag.create(bookmark_id: Bookmark.last.id, tag_id: new_tag.id)
        # byebug
    else 
        tag_list = []

        Tag.all.each do |tag|
            # byebug
            tag_list.push(tag.category_name.downcase)
        end 

        page.meta_tag['name']['keywords'].each do |keyword|
            # byebug
            if !tag_list.include?(keyword.downcase)
                # byebug
                Tag.create(category_name: keyword, image: page.images.best)
                BookmarkTag.create(bookmark_id: Bookmark.last.id, tag_id: Tag.last.id)
            elsif tag_list.include?(keyword.downcase)
                # grab tag ID, not index 
                tag_index = tag_list.index(keyword.downcase)
                # byebug
                BookmarkTag.create(bookmark_id: Bookmark.last.id, tag_id: tag_index)
            end 
        end 
    end 
    create_score(page)
end 


def create_score(page)
    # if Bookmark.all.length > 1   
       Bookmark.all.each do |bookmark|
             byebug
            second_score = SecondaryScore.create(bookmark_a_id: Bookmark.last.id, bookmark_b_id: bookmark.id, score: 0)
            #    byebug 
            #   self.update_score(page, second_score, bookmark)

            #  if Bookmark.last.tags
            #     Bookmark.last.tags.each do |word|
            #         byebug
            #         bookmark.tags.each do |tag| 
            #             byebug
            #             if word.downcase.include?(tag.category_name.downcase)
            #                 second_score.update(score: second_score.score+= 40)
            #             end 
            #         end 
            #     end
            
            if page.title.downcase.include?(bookmark.h1.downcase)
                second_score.update(score: second_score.score+= 30) 
                byebug  
            elsif page.description.downcase.include?(bookmark.body.downcase)
                second_score.update(score: second_score.score+= 20)
                byebug  
            elsif page.url.downcase.include?(bookmark.url.downcase)
                second_score.update(score: second_score.score+= 10)
                byebug  
            end
        end 
    # end 
end 
#----------------------------------#

def self.secondary_score(first_graded_bookmarks)
    first_graded_bookmarks.each do |bookmark|
        #go through the list of already graded bookmarks
        # compare all the bookmarks that are above 9 to each bookmark in the list 
        # do another scoring 
        if bookmark.score > 9
            all_bookmarks.each do |second_bookmark|
        # we want to take the current list of relevant bookmarks, run them through all bookmarks, and create another score  
        #ensure no duplicates 
        #out put should be an array of arrays 
        #compare the current bookmark with the new bookmark and grade based on any matches 


        #think about how to create a score based on a search, and the another score that is generated when you compare each bookmark
        # in the already graded list with all bookmarks again.

        # There should be a separate attribute that describes the relationship between the primary bookmark, and its associated
        # bookmarks through a secondary score.

        # These are ideally stored in a hash to display related bookmarks to the main one.

        #if a bookmark exists in two hashes, representing a secondary bookmark relating to two big bookmarks, they need to be in a hash
        # for each big bookmark, as well as have a value that is a score which describes that secodary bookmark and how closely its related to each
            # big bookmark

                if bookmark.tags && bookmark.tags[0] && bookmark.tags[0].category_name.downcase.include?(searchInput.downcase)
                    bookmark.score += 40
                end 
            
                if bookmark.h1.downcase.include?(searchInput.downcase)
                    bookmark.score += 30 
                end
                
                if bookmark.body && bookmark.body.downcase.include?(searchInput.downcase)
                    bookmark.score += 20
                end 
                
                if  bookmark.url && bookmark.url.downcase.include?(searchInput.downcase)
                    bookmark.score += 10
                # else 
                    # create logic to create a bookmark_tag
                end
            end 
        end 
    end
end 