require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
  'Hello world!'
end

get '/secret' do
  'Peanut butter is yummy'
end

get '/secret/truth' do
  'Marmite is an abomination'
end

get '/random-cat' do
  @name = ["Nicola", "Corinne"].sample
  erb(:index)
end

get '/name-cat' do
  @name = params[:name]
  p params
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  p params
  erb :named_cat
end


# http://localhost:4567/