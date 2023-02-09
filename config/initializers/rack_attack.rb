Rack::Attack.throttle("requests by ip", limit: 10, period: 5.minutes) do |request|
  request.ip
end