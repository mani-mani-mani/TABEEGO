Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "top#index"
  get "admin", to: "top#admin"

  get "login", to: "top#login"
  post "login", to:"top#login_check"

  get "register", to:"top#register"
  post "register", to:"top#register_user"

end

