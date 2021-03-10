class BookmarksController < ApplicationController
   
    def search 
        bookmarks = Bookmark.graded_bookmarks(params[:search])
        # byebug
        # bookmarks.unshift({search: `#{params[:search]}`})
        render json: {search: params[:search], bookmarks: bookmarks}
    end 

    def index
        bookmarks = Bookmark.all
        render json: bookmarks 
    end 

    def show 
        bookmarks = Bookmark.graded_bookmarks(params[:search])
        render json: bookmarks
    end 

    def create 
        page = MetaInspector.new(params[:url])
        bookmark = Bookmark.create(url: page.url, image: page.images.best, h1: page.title, body: page.description, score: 0 ,user_id: 1)
        
        if bookmark.valid?
            keywords = page.title.split(" ")

            # byebug
            keywords.each do |word|
                new_tag = Tag.create(category_name: word, image: page.images.best)
                
                BookmarkTag.create(bookmark_id: bookmark.id, tag_id: Tag.last.id)
            
                # byebug
            end 
            # byebug
            # Bookmark.create_keywords(page)

            render json: bookmark 
        else 
            error = bookmark.errors.full_messages    
            render json: error
        end 
    end 

    def update 
        bookmark = Bookmark.update(url: params[:url], image: params[:image], h1: params[:h1], body: params[:body], score: params[:score],user_id: params[:user_id])
        render json: bookmark 
    end 

    def destroy
        bookmark = Bookmark.find(params[:id])
        bookmark.destroy()
        render json: {}
    end 
end
