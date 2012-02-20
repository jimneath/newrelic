class DebugController < ApplicationController
  def index
    request_start = request.env['HTTP_X_REQUEST_START'].to_s[/\d+$/].to_i
    queue_start = request.env['HTTP_X_QUEUE_START'].to_s[/\d+$/].to_i
    middleware_start = request.env['HTTP_X_MIDDLEWARE_START'].to_s[/\d+$/].to_i
    now = (Time.now.to_f * 1000000).to_i

    @server_time = queue_start - request_start
    @queue_time = middleware_start - queue_start
    @middleware_time = now - middleware_start
  end
end
