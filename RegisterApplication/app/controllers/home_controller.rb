class HomeController < ApplicationController

  def index
    # Render static view.
    # Link for login or register in vi
  end

  def register
    # Render view for register
    @user = User.new
  end

  def login
    # get -> Render form to client
    if request.get?
      @user = User.new
    end

    # post -> Check posted form from client
    if request.post?
      user = User.find_by_email(params[:user][:email])
      if user && user.authenticate(params[:user][:password])
        session[:userid] = user.id
        redirect_to api_keys_index_path
      else
        @user = User.new
        @user.email = params[:user][:email]
        flash.now[:notice] = 'Warning! Credentials was wrong!'
      end
    end
  end

  def logout
    session[:userid] = nil if session[:userid]
    @user = User.new
    #user has logged out. And can login form is rendered again....
    render 'login'
  end

end

