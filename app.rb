require 'sinatra/base'
require 'capybara' 
require 'capybara/rspec'
require 'rspec' 

class Battle < Sinatra::Base
    get '/' do
        p params
        @player1 = params[:player1_name]
        @player2 = params[:player1_name]
        erb(:index)
      end
    # start the server if ruby file executed directly
    run! if app_file == $0
end