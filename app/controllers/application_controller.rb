class ApplicationController < ActionController::Base
  def client(query_params)
    conn = Faraday.new('https://api.giphy.com/v1/gifs/search') do |f|
      f.use :http_cache, store: Rails.cache
    end

    conn.get("?q=cheeseburger&api_key=Vu7iR3tyCmCW29l66WsWPr8aujtrexiT")
  end
end