class CommentsController < ApplicationController
    def create
        Comment.create(comment_params)
        redirect_to controller: :questions, action: :index, area: params[:area], country: params[:country], city: params[:city], question_id: question_id
    end

    private
    def comment_params
        params.require(:comment).permit(:user_id, :question_id, :title, :detail)
    end
end
