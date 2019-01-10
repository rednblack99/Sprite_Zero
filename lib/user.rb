require 'data_mapper'

class User
  include DataMapper::Resource

    property :id, Serial
    property :username, String,  :unique => true
    property :age, Integer
    property :password, BCryptHash
  end
