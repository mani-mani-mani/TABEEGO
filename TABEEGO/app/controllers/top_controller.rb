class TopController < ApplicationController
    def index
    end

    def admin
        @users = User.all
    end

    def register
    end

    def register_user
        username = params[:username]
        password = params[:password]

        user = User.new
        user.name = username
        user.password = password
        user.save

        redirect_to "/login"
    end

    def login
    end

    def login_check
        username = params[:username]
        password = params[:password]

        users = User.where("name = ? and password = ?", username, password)
        user = users[0];

        if user
            session[:id] = user.id;
            redirect_to "/"
        else
            redirect_to "/login", flash:{ error_message: "ユーザー名かパスワードが間違っています。"}
        end

    end
    
    def logout
    end
end
