ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './config/datamapper'

class Singleton_dating < Sinatra::Base

  set :method_override, true

  get '/' do
    'Hello Singletons'
  end

  get '/privateprofile/1'  do
    User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')
    @user = User.get!(1)
    erb :profile
  end









  get "/privateprofile/edit/:id/name" do
    @user = User.get(params[:id])
    @detail = 'name'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/name" do
    user = User.get(params[:id])
    user.update(:name => params[:updated_detail])
    redirect '/privateprofile/1'
  end


  get "/privateprofile/edit/:id/description" do
    @user = User.get(params[:id])
    @detail = 'description'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/description" do
    user = User.get(params[:id])
    user.update(:description => params[:updated_detail])
    redirect '/privateprofile/1'
  end


  get "/privateprofile/edit/:id/interests" do
    @user = User.get(params[:id])
    @detail = 'interests'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/interests" do
    user = User.get(params[:id])
    user.update(:interests => params[:updated_detail])
    redirect '/privateprofile/1'
  end


  get "/privateprofile/edit/:id/age" do
    @user = User.get(params[:id])
    @detail = 'age'
    erb :edit_detail
  end


  put "/privateprofile/edit/:id/age" do
    user = User.get(params[:id])
    user.update(:age => params[:updated_detail])
    redirect '/privateprofile/1'
  end

  get "/privateprofile/edit/:id/photo" do
    @user = User.get(params[:id])
    @detail = 'photo'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/photo" do
    user = User.get(params[:id])
    user.update(:photo => params[:updated_detail])
    redirect '/privateprofile/1'
  end

  get "/privateprofile/edit/:id/availability" do
    @user = User.get(params[:id])
    @detail = 'availability'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/availability" do
    user = User.get(params[:id])
    user.update(:availability => params[:updated_detail])
    redirect '/privateprofile/1'
  end

  get "/privateprofile/edit/:id/location" do
    @user = User.get(params[:id])
    @detail = 'location'
    erb :edit_detail
  end

  put "/privateprofile/edit/:id/location" do
    user = User.get(params[:id])
    user.update(:location => params[:updated_detail])
    redirect '/privateprofile/1'
  end
  
  run! if app_file == 0

end
