require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  
  configure:development do 
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:first_player] = params[:first_player]
    session[:second_player] = params[:second_player]
    redirect '/play'
  end

  get '/play' do
    @first_player = session[:first_player]
    @second_player = session[:second_player]
    @health1 = 60
    @health2 = 60
    @default_health = 60
    erb :play
  end

  get '/attack' do
    @first_player = session[:first_player]
    @second_player = session[:second_player]
    erb :attack
  end

  run! if app_file == $0
end
