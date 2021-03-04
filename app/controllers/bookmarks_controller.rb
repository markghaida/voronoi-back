class BookmarksController < ApplicationController
    def index
        bookmarks = Bookmark.all
        render json: bookmarks 
    end 

    def show 
        bookmark = Bookmark.find(params[:id])
        render json: bookmark 
    end 

    def create 
        # add code to receive the url, then do the follwoing web scraping 
        page = MetaInspector.new(params[:url])
        bookmark = Bookmark.create(url: page.url, image: page.images.favicon, h1: page.h1, body: page.description, user_id: 1)
        puts bookmark
        # bookmark = Bookmark.create(url: params[:url], image: params[:image], h1: params[:h1], body: params[:body], user_id: params[:user_id])
        render json: bookmark 
    end 
    

    def update 
        bookmark = Bookmark.update(url: params[:url], image: params[:image], h1: params[:h1], body: params[:body], user_id: params[:user_id])
        render json: bookmark 
    end 

    def destroy
        bookmark = Bookmark.find(params[:id])
        bookmark.destroy()
        render json: {}
    end 
end
