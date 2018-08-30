class DisplayApiController < ApplicationController
  def display
    @ordenes = HTTParty.get('https://laudusfake.herokuapp.com/api/v1/orden_compras/', :headers =>{'Content-Type' => 'application/json'} )
  end
end
