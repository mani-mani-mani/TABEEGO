class QuestionsController < ApplicationController
    def index
        question_id = params[:question_id]
        @question = Question.find(question_id)

        @comment = Comment.new
        @comment_all = Comment.where(question_id: question_id)
    end
end
