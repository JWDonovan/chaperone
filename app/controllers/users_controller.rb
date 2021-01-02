class UsersController < ApplicationController
  get "/login" do
    if !logged_in?
      erb :"users/login"
    else
      redirect :"/users/#{ current_user.id }"
    end
  end

  post "/login" do
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect :"/users/#{ @user.id }"
    else
      redirect :"/login"
    end
  end

  get "/users/:id" do
    "Users page"
  end

  get "/logout" do
    session.destroy
    redirect :"/login"
  end
end