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
        flash[:notice] = 'Failed login'
      end
    end
  end

end

