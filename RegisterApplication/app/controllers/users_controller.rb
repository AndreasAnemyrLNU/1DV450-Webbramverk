class UsersController < ApplicationController

  def create
    @user = User.new params_user
    if @user.save
      session[:userid] = @user.id
      redirect_to root_path
    else
      #TODO 'home/register' is not so pretty I think :(
      #TODO But don't know howto make use of route....
      render 'home/register'
    end
  end

  private
  def params_user
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
