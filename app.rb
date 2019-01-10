ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
# require './config/datamapper'

class Singleton < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/signup' do
    'Sign up info here'
  end

end
