class UsersController < ApplicationController
  get "/login" do
    # if logged in, redirect to /users/:id or :slug
    # else, show login form
    erb :"users/login"
  end

  post "/login" do
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      "Logged in"
    else
      redirect :"/login"
    end
  end
end