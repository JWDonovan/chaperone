# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'super_secret'
    register Sinatra::Flash
  end

  get '/' do
    redirect '/destinations'
  end

  helpers do
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:id]) if session[:id]
    end
  end
end
