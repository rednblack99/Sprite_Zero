require './lib/user'

DataMapper.setup(:default, "postgres://localhost/singleton_#{ENV["RACK_ENV"]}")

DataMapper.finalize

DataMapper.auto_migrate!

# ENV[“RACK_ENV”] == ‘test’ ? DataMapper.auto_migrate! : DataMapper.auto_upgrade!
