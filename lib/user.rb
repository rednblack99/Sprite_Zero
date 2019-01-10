require 'sinatra/activerecord'

class User < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :age
  validates_presence_of :interests
  validates_presence_of :photo
  validates_presence_of :availability
  validates_presence_of :location
  validates_presence_of :username
  validates_presence_of :password

  def self.authenticate(username, password)
    user = first(username: username)
    return nil unless user

    if user.password == password
      user
    else
      nil
    end
  end

end
