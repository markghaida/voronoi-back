class BookmarksController < ApplicationController
    def index
        bookmarks = Bookmark.graded_bookmarks(params[:search])
        render json: bookmarks 
    end 

    def show 
        bookmark = Bookmark.find(params[:id])
        render json: bookmark 
    end 

    def create 
    #     # add code to receive the url, then do the following web scraping 
        page = MetaInspector.new(params[:url])
        # console.log()
        bookmark = Bookmark.create(url: page.url, image: page.images.best, h1: page.title, body: page.description, score: 0 ,user_id: 1)
        # bookmark = Bookmark.create(url: params[:url], image: params[:image], h1: params[:h1], body: params[:body], user_id: params[:user_id])
        render json: bookmark 
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
