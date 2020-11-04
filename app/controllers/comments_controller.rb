class CommentsController < ApplicationController

    def index
        comments = Comment.all
        #render json: comments, except: [:created_at, :updated_at]
        render json: comments.to_json(include: [:user])
    end 

    def create
            @comment = Comment.new(comment_params)
            if @comment.save
                render :json => @comment
            else
                render :json => { :errors => @comment.errors }, status: 400
            end
        end

        def show
            comment = Comment.find_by(id: params[:id])
            render json: comment

        end
    
        private

    def comment_params
        params.require(:comment).permit(:name, :user_id)
    end
end

