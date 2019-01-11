ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './config/datamapper'

class Singleton_dating < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/signin' do
    user = User.authenticate(params[:sign_in_username], params[:sign_in_password])
    if user
      session[:user_id] = user.id
      redirect '/privateprofile/1'
    else
      redirect '/'
    end
  end

  post '/signup' do
    user = User.create(username: params[:sign_up_username],age: params[:sign_up_age], password: params[:sign_up_password])
    if user.valid?
      session[:user_id] = user.id
      redirect '/privateprofile/1'
    else
      redirect '/'
    end
  end

  get '/privateprofile/1'  do
    erb :profile
  end

  run! if app_file == 0

end
