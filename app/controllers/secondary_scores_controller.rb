class SecondaryScoresController < ApplicationController

    def index
        secondary_scores = SecondaryScore.all 
        # byebug 
        # render json: secondary_scores 
    end 

    def create 
        SecondaryScore.create(bookmark_a_id: params[:bookmark_a_id], bookmark_b_id: params[:bookmark_b_id], score: params[:score])
    end 

end
