class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception
  before_action :require_login

  private
  def require_login
    unless logged_in? then
      flash[:error_message] = "ログインしてください"
      redirect_to "/"
    end
  end
end