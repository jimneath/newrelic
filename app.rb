# setup
require 'bundler/setup'
Bundler.require(:default)

class App < Sinatra::Base
  # config
  configure do
  
  end

  # routes
  get '/' do
    ENV.inspect
  end
end