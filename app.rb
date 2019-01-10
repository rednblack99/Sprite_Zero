ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
#require './config/datamapper'

class Singleton < Sinatra::Base

  get '/' do
    'Hello Singletons'
  end

  get '/profile'  do
    erb :profile
  end

end
