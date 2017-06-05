require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'

require_relative './models/r_p_s'

get "/" do
  erb(:home)
end

get "/about" do
  erb(:about)
end

get '/play_game/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @winner = game.who_won()
  erb(:result)
end

get '/play_game/:player1' do
  @computer_choice = Game.computer_choice
  @player1_choice = params[:player1]
  game = Game.new(@player1_choice, @computer_choice)
  @winner = game.who_won()
  erb(:computer_game)
end

