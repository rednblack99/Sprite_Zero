 require './lib/user'

DataMapper.setup(:default, "postgres://localhost/singleton_#{ENV["RACK_ENV"]}")

DataMapper.finalize
