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
  # p params
  @name = params[:name]
  puts params
  erb(:index)
end

get '/named-cat' do
<<<<<<< HEAD
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
=======
 @name = params[:name]
 puts params
 erb(:index)
>>>>>>> 5d1b563b25fff4e67946b1bec03a0ef56b430c35
end

get '/cat-naming-form' do
  erb(:cat_naming_form)
end  

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end  