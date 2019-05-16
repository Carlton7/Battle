require 'sinatra/base'
require 'capybara' 
require 'capybara/rspec'
require 'rspec' 
require './lib/player'

class Battle < Sinatra::Base
    # enable :sessions
    
    get '/' do
        erb(:index)
    end

    post '/player_names' do
        $player_1 = Player.new(params[:player_1_name])
        $player_2 = Player.new(params[:player_2_name])
        redirect '/play'
    end
    
    get '/play' do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        erb(:display)
    end

    get '/p1_attack_confirmation' do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        erb(:player_1_attack)
    end

end


