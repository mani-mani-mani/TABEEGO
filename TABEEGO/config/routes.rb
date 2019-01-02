Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "top#index"
  get "/admin", to: "top#admin"

  get "/login", to: "top#login"
  post "/login", to:"top#login_check"
  get "/logout", to: "top#logout"

  get "/register", to:"top#register"
  post "/register", to:"top#register_user"

  get "/profile", to: "profile#index"

  # 地域遷移
  get "/area", to: "area#index"

  # 質問
  get "/area/:area/:country/:city", to: "questions#index"
  post "/area/:area/:country/:city/", to: "questions#create"

  # コメント
  get "/area/:area/:country/:city/:question_id", to: "questions#detail"
  post "/area/:area/:country/:city/:question_id", to: "comments#create"
end
