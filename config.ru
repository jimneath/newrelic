# setup
require './middleware/middleware_start.rb'
require './app'

# middleware
use NewRelic::MiddlewareStart
use Rack::ShowExceptions

# app
run App