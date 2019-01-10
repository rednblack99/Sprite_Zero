require 'data_mapper'

class User
  include DataMapper::Resource

    property :id, Serial
    property :username, String,  :unique => true
    property :age, Integer
    property :password, BCryptHash

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
