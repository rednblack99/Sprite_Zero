require 'data_mapper'
require 'dm-validations'

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
    property :username, String, :unique => true
    property :password, BCryptHash

    validates_length_of :password, :min => 8 

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
