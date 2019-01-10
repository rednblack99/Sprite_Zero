ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './config/datamapper'

class Singleton_dating < Sinatra::Base

  get '/' do
    'Hello Singletons'
  end

  get '/privateprofile/1'  do
    @user = User.get!(1)
    erb :profile
  end

  get "/privateprofile/edit/:id/name" do
    @user = User.get(1)
    @detail = 'name'
    erb :edit_detail
  end

  run! if app_file == 0

end
