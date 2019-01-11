ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './config/datamapper'

class Singleton_dating < Sinatra::Base
set :method_override, true
enable :sessions

  get '/' do
    erb :index
  end

  post '/signin' do
    user = User.authenticate(params[:sign_in_username], params[:sign_in_password])
    if user
      session[:id] = user.id
      redirect "/privateprofile/#{session[:id]}"
    else
      redirect '/'
    end
  end

  post '/signup' do
    user = User.create(username: params[:sign_up_username],age: params[:sign_up_age], password: params[:sign_up_password])
    if user
      session[:id] = user.id
      redirect "/privateprofile/#{session[:id]}"
    else
      redirect '/'
    end
  end

  get '/privateprofile/:id'  do
    if params[:id].to_i == session[:id]
      @user = User.get(params[:id])
      erb :profile
    else
      redirect '/'
    end
  end

  get '/singleton-fithub'  do
    @singletons = User.all
    erb :Fithub
  end










  get "/privateprofile/edit/:id/name" do
    @user = User.get(params[:id])
    @detail = 'name'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/name" do
    user = User.get(params[:id])
    user.update(:name => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end


  get "/privateprofile/edit/:id/description" do
    @user = User.get(params[:id])
    @detail = 'description'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/description" do
    user = User.get(params[:id])
    user.update(:description => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end


  get "/privateprofile/edit/:id/interests" do
    @user = User.get(params[:id])
    @detail = 'interests'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/interests" do
    user = User.get(params[:id])
    user.update(:interests => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end


  get "/privateprofile/edit/:id/age" do
    @user = User.get(params[:id])
    @detail = 'age'
    erb :edit_detail
  end


  put "/privateprofile/edit/:id/age" do
    user = User.get(params[:id])
    user.update(:age => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end

  get "/privateprofile/edit/:id/photo" do
    @user = User.get(params[:id])
    @detail = 'photo'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/photo" do
    user = User.get(params[:id])
    user.update(:photo => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end

  get "/privateprofile/edit/:id/availability" do
    @user = User.get(params[:id])
    @detail = 'availability'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/availability" do
    user = User.get(params[:id])
    user.update(:availability => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end

  get "/privateprofile/edit/:id/location" do
    @user = User.get(params[:id])
    @detail = 'location'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/location" do
    user = User.get(params[:id])
    user.update(:location => params[:updated_detail])
    redirect "/privateprofile/#{session[:id]}"
  end

  run! if app_file == 0

end
