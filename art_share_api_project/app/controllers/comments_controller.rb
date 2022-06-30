class CommentsController < ApplicationController
    def index
        render json: Comment.where(comment_params)
    end

    def create
        # render json: params
        comment = Comment.new(comment_params)
        # replace the `comment_attributes_here` with the actual attribute keys
        if comment.save
            render json:comment
        else
            render json: comment.errors.full_messages, status: unprocessable_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to "/comments"
    end


    private
    def comment_params
        params.require(:comment).permit(:id, :user_id, :artwork_id, :body)
    end
end