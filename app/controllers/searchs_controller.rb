class SearchsController < ApplicationController
  def index
    response = client(params)

    @body = response.body

    http_cache_forever(public: true) do
      render json: @body
    end
    
  end
end
