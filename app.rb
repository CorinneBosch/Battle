require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class Battle < Sinatra::Base
  configure:development do 
    register Sinatra::Reloader
  end
  get '/' do
    'Hello Battle!'
  end
  run! if app_file == $0
end

# http://localhost:9292/