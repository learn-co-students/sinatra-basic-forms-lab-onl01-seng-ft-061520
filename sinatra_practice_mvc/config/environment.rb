ENV['SINATRA_ENV'] ||= 'development'

# api_key = ENV['MY_SECRET'] # separately enter your api key , not visible to anyone or on github

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/#{ENV['SINATRA_ENV']}.sqlite"
)

# configure :development do
# set :database, "sqlite:db/#{ENV['SINATRA_ENV']}.db" -this allows to test different databases, test database, development database, etc
# end

require './app/controllers/application_controller'
require_all 'app'
