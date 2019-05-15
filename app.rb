require 'sinatra/base'
require 'capybara' 
require 'capybara/rspec'
require 'rspec' 

class Battle < Sinatra::Base
    get '/' do
        erb(:index)
    end

    post '/player_names' do
        @player_1_name = params[:player_1_name]
        @player_2_name = params[:player_2_name]
        erb(:display)
    end
    
end


