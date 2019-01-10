ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './config/datamapper'

class Singleton_dating < Sinatra::Base

  get '/' do
    'Hello Singletons'
  end

  get '/privateprofile/1'  do
    erb :profile
  end

  run! if app_file == 0

end
