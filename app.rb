require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure:development do 
    register Sinatra::Reloader
  end

  # get '/' do
  #   'Testing infrastructure working!'
  # end
 

  get '/' do
    erb :index
  end

  post '/names' do
    @first_player = params[:first_player]
    @second_player = params[:second_player]
    erb :play
  end

  run! if app_file == $0
end

# http://localhost:9292/