class QuestionsController < ApplicationController
    def index
        @add = Question.new
        city = params[:city]
        @questions = Question.joins(:city, :user).select("questions.*", "users.name AS username").where('cities.name' => city)
    end

    def detail
        @add = Comment.new

        question_id = params[:question_id]
        @question = Question.find(question_id)
        @comments = Comment.joins(:user).select("comments.*, users.name AS username").where(question_id: question_id)
    end

    # セッションでユーザーIDを取得
    def create
        user_id = session[:user_id]
        city_id = City.find_by(name: params[:city]).id

        data = question_params.merge({:user_id => user_id, :city_id => city_id})
        Question.create(data)
        redirect_to controller: :questions, action: :index, area: params[:area], country: params[:country], city: params[:city]
    end

    private
    def question_params
        params.require(:question).permit(:title, :detail)
    end
end

