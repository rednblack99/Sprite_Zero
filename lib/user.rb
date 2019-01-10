require 'data_mapper'

class User
  include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :description, String
    property :age, Integer
    property :interests, String
    property :photo, String
    property :availability, String
    property :location, String
    property :username, String
    property :password, String

  end
