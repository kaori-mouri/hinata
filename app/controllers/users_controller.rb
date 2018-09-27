class UsersController < ApplicationController
  def index
  end
  
  
  def login_form
  end
  
  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/users/index")
    else
      @error_message = "IDまたはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      render("/users/login_form")
    end
  end
  
  def logout
      session[:user_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("/")
  end
  
end
