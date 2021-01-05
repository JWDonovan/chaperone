class DestinationsController < ApplicationController
  # new
  get '/destinations/new' do
    redirect '/login' unless logged_in?
    erb :"destinations/new"
  end

  # create
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

  # show
  get '/destinations/:id' do
    @destination = Destination.find_by(id: params[:id])

    if @destination
      erb :"destinations/show"
    else
      '404: Destination not found'
    end
  end

  # edit
  get '/destinations/:id/edit' do
    redirect '/login' unless logged_in?

    @destination = Destination.find_by(id: params[:id])

    if @destination
      if @destination.user_id == current_user.id
        erb :"destinations/edit"
      else
        'You cannot edit destinations created by other users'
      end
    else
      '404: Destination not found'
    end
  end

  # update
  patch '/destinations/:id' do
    @destination = Destination.find_by(id: params[:id])

    @destination.update(
      location: params[:location],
      image: params[:image],
      caption: params[:caption],
      description: params[:description],
      map_embed_src: params[:map_embed_src]
    )

    if @destination.save
      erb :"destination/show"
    else
      redirect "/destinations/#{ @destination.id }/edit"
    end
  end

  # index
  get '/destinations' do
    @destinations = Destination.all
    erb :"destinations/index"
  end

  # destroy
  delete '/destinations/:id' do
    redirect '/login' unless logged_in?

    @destination = Destination.find_by(id: params[:id])

    if @destination
      if @destination.user_id == current_user.id
        @destination.destroy
        redirect '/destinations'
      else
        'You cannot delete destinations created by other users'
      end
    else
      '404: Destination not found'
    end
  end
end