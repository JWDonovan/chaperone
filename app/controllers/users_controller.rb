# frozen_string_literal: true

class UsersController < ApplicationController
  get '/login' do
    redirect "/users/#{current_user.id}" if logged_in?
    erb :"users/login"
  end

  post '/login' do
    @user = User.find_by(email: params[:email])

    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect :"/users/#{@user.id}"
    else
      redirect :"/login"
    end
  end

  get '/signup' do
    redirect "/users/#{current_user.id}" if logged_in?
    erb :"users/new"
  end

  post '/signup' do
    user = User.new(params)

    if user.save
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      redirect '/signup'
    end
  end

  get '/users/:id' do
    @user = User.find_by(id: params[:id])

    if @user
      erb :"users/show"
    else
      '404: User not found'
    end
  end

  get '/users/:id/edit' do
    redirect '/login' unless logged_in?

    @user = User.find_by(id: params[:id])

    if @user
      if @user.id == current_user.id
        erb :"users/edit"
      else
        'You cannot edit other users'
      end
    else
      '404: User not found'
    end
  end

  patch '/users/:id' do
    @user = User.find_by(id: params[:id])

    @user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password]
    )

    if @user.save
      erb :"users/show"
    else
      redirect "/users/#{@user.id}/edit"
    end
  end

  get '/logout' do
    session.destroy
    redirect :"/login"
  end

  delete '/users/:id' do
    redirect '/login' unless logged_in?

    @user = User.find_by(id: params[:id])

    if @user
      if @user.id == current_user.id
        session.destroy
        @user.destroy
        redirect '/'
      else
        'You cannot delete other users'
      end
    else
      '404: User not found'
    end
  end
end
