require 'sinatra/base'

class Singleton < Sinatra::Base

  get '/' do
    'Hello Singletons'
  end


end
