# setup
require 'bundler/setup'
Bundler.require(:default)

class App < Sinatra::Base
  # config
  configure do
  
  end

  # routes
  get '/' do
    request_start = env['HTTP_X_REQUEST_START'][/\d+$/].to_i
    queue_start = env['HTTP_X_QUEUE_START'][/\d+$/].to_i
    middleware_start = env['HTTP_X_MIDDLEWARE_START'][/\d+$/].to_i
    now = (Time.now.to_f * 1000000).to_i

    @server_time = queue_start - request_start
    @queue_time = middleware_start - queue_start
    @middleware_time = now - middleware_start
    
    erb :index
  end
end