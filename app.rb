require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/newpirate' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:ships].each do |ship_hash|
        Ship.new(ship_hash)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
