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
  puts params
  erb(:index)
end

get '/paco-and-serge' do
  erb(:paco_and_serge)
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

get '/cat-naming-form' do
  erb(:cat_naming_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
