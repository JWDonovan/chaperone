class DestinationsController < ApplicationController
  get '/destinations/new' do
    redirect '/login' unless logged_in?
    erb :"destinations/new"
  end

  post '/destinations/create' do
    redirect '/login' unless logged_in?

    destination = Destination.new(params)
    destination.user_id = current_user.id

    if destination.save
      redirect "/destinations/#{ destination.id }"
    else
      redirect '/destinations/new'
    end
  end

  get '/destinations/:id' do
    @destination = Destination.find_by(id: params[:id])

    if @destination
      erb :"destinations/show"
    else
      '404: Destination not found'
    end
  end
end