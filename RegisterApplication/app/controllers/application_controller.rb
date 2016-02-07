class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # https://gist.github.com/thebucknerlife/10090014
  def current_user
    @current_user ||= User.find(session[:userid]) if session[:userid]
  end
  helper_method :current_user

  def authorize
    render :file => 'public/403.html', :status => :not_found, :layout => false unless current_user
  end


end
