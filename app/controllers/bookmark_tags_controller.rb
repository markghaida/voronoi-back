class BookmarkTagsController < ApplicationController
    def index
        bookmark_tags = BookmarkTag.all
        render json: bookmark_tags 
    end 

    def show 
        bookmark_tag = BookmarkTag.find(params[:id])
        render json: bookmark_tag
    end 

    def create 
        bookmark_tag = BookmarkTag.create(bookmark_id: params[:bookmark_id], tag_id: params[:tag_id])
        render json: bookmark_tag
    end 

    def update 
        bookmark_tag = BookmarkTag.update(bookmark_id: params[:bookmark_id], tag_id: params[:tag_id])
        render json: bookmark_tag
    end 

    def destroy 
        bookmark_tag = BookmarkTag.find(params[:id])
        bookmark_tag.destroy
        render json: {}
    end 
end
