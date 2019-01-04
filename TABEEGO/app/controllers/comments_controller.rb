class CommentsController < ApplicationController
    def create
        user_id = session[:user_id]
        data = comment_params.merge({user_id: user_id, question_id: params[:question_id]})
        Comment.create(data)
        redirect_to controller: :questions, action: :detail, area: params[:area], country: params[:country], city: params[:city], question_id: params[:question_id]
    end

    private
    def comment_params
        params.require(:comment).permit(:title, :detail)
    end
end
