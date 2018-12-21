class CommentsController < ApplicationController
    def create
        Comment.create(comment_params)
        redirect_to controller: "questions", action: "index", question_id: params[:question_id]
    end

    private
    def comment_params
        params.require(:comment).permit(:user_id, :question_id, :title, :detail)
    end
end
