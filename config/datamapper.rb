# require './lib/singleton'

DataMapper.setup(:default, "postgres://localhost/singleton_#{ENV["RACK_ENV"]}")

DataMapper.finalize
