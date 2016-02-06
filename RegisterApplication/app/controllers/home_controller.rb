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
    # Render form for user login
    @user = User.new
  end

end

