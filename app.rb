require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:ships].each do |ship_hash|
        @ships << Ship.new(ship_hash)
      end
      @ships
      erb :'pirates/show'
    end

  end
end
