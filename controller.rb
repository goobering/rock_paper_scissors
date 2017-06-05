require 'sinatra'
require 'sinatra/contrib/all'

require_relative 'models/game.rb'

get '/' do
  erb(:home)
end

get '/game/:p1/:p2' do
  game = Game.new()
  @result = game.play_game(params[:p1], params[:p2])
  erb(:result)
end