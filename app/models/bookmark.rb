class Bookmark < ApplicationRecord
    
    # has_many(:secondary_scores, foreign_key: :bookmark_a_id, dependent: :destroy)
    # has_many(:reverse_secondary_scores, class_name: :secondary_score,
    #   foreign_key: :bookmark_b_id, dependent: :destroy)

    # has_many :bookmarks, through: :secondary_scores, source: :bookmark_b


    belongs_to :user 
    has_many :bookmark_tags 
    has_many :tags, through: :bookmark_tags
    

    validates :url, uniqueness: true 


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


    # def self.update_score(page, second_score, bookmark)
    #     byebug 
    #     if page.meta_tag['name']['keywords']
    #         page.meta_tag['name']['keywords'].each do |word|
    #             byebug
    #             bookmark.tags.each do |tag| 
    #                 byebug
    #                 if word.downcase.include?(tag.category_name.downcase)
    #                     second_score.update(score: second_score.score+= 40) 
    #                 end 
    #             end 
    #         end
    #     end 
           
    #     if page.title.downcase.include?(bookmark.h1.downcase)
    #             # byebug  
    #         second_score.update(score: second_score.score+= 30)  
    #     end 
                
    #     if page.description.downcase.include?(bookmark.body.downcase)
    #                 # byebug  
    #         second_score.update(score: second_score.score+= 20) 
    #     end 
                
    #     if page.url.downcase.include?(bookmark.url.downcase)
    #                 # byebug  
    #         second_score.update(score: second_score.score+= 10) 
    #     end

    # end 


    def self.graded_bookmarks(searchInput)
        # byebug
        # goes through a for loop of all the bookmarks,
        all_bookmarks = Bookmark.all.each do |bookmark|
            # set the bookmark.score = 0 at the top of this method, then
            bookmark.score = 0 
            # with if conditions to determine if the search input is contained
            # in any of the attributes for that particular bookmark, if it is, 
            # each attribute it is contained in will update the score based on 

            if bookmark.tags && bookmark.tags[0] && bookmark.tags[0].category_name.downcase.include?(searchInput.downcase)
                bookmark.score += 40
            elsif bookmark.h1.downcase.include?(searchInput.downcase)
                bookmark.score += 30 
            elsif bookmark.body && bookmark.body.downcase.include?(searchInput.downcase)
                bookmark.score += 20
            elsif  bookmark.url && bookmark.url.downcase.include?(searchInput.downcase)
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
        # byebug
        return sorted_bookmarks
        # closer in proximity to the search bar, and the lesser scores 
        # on the perimeters 
    end




end 
