class TagsController < ApplicationController
    def index
        tags = Tag.all
        render json: tags 
    end 

    def show 
        tag = Tag.find(params[:id])
        render json: tag 
    end 

    def create
        tag = Tag.create(category_name: params[:category_name], image: params[:image])
        render json: tag 
    end 

    def update 
        tag = Tag.update(category_name: params[:category_name], image: params[:image])
        render json: tag
    end
    
    def destroy
        tag = Tag.find(params[:id]) 
        tag.destroy()
        render json: {}
    end 
end
