class TopController < ApplicationController
    skip_before_action :require_login
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

        if user.save
            log_in(user)
            redirect_to "/area"
        else
            flash[:error_message] = "Faied to register"
        end
    end

    def login
    end

    def login_check
        username = params[:username]
        password = params[:password]

        user = User.find_by(name: username, password: password)

        if user
            log_in(user)
            redirect_to "/area"
        else
            redirect_to "/login", flash:{ error_message: "ユーザー名かパスワードが間違っています。"}
        end

    end

    def logout
        log_out
        flash[:error_message] = "ログアウトしました。"
        redirect_to "/"
    end
end
