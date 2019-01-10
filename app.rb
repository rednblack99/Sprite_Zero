ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './config/datamapper'

class Singleton < Sinatra::Base

  get '/' do
    'Hello Singletons'
  end


end
