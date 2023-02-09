module GiphyClient
  class Search
    def client
      conn = Faraday.new(
        url: 'https://api.giphy.com/v1/gifs/search',
        headers: {'Content-Type' => 'application/json'}
      )

      conn.get('?q=cheeseburgers&api_key=Vu7iR3tyCmCW29l66WsWPr8aujtrexiT')
    end
  end
end