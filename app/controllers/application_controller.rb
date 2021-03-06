class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def curret_user
    session[:user_id]
  end

  def homepage
    redirect_to login_path unless !session[:name].nil?
  end
end
