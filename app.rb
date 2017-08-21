require 'sinatra'
require_relative 'random_pairing.rb'

get "/" do
erb :index
end
get'/pairs'do
	puts "MADE IT TO GET PAIRS"
	names = params[:names]
	puts "names = #{names}"
	pair = params[:pair]

	pair = pair(names)
	
	
erb :pairs, :locals => {pair: pair, names: names}
end
post'/pairs'do
	puts "MADE IT TO post PAIRS"
	names = params[:names]
	puts "names = #{names}"
	pair = params[:pair]
	pair = pair(names)

	
	redirect '/confirmed_pairs?names='+ names +'&pair='+pairs
end
get '/confirmed_pairs' do
puts "MADE IT TO get CONPAIRS"
	names = params[:names]
	puts "names = #{names}"
	pair = params[:pair]

	pair = pair(names)
	
	
erb :confirmed_pairs, :locals => {pair: pair, names: names}		
end
post '/confirmed_pairs' do
puts "MADE IT TO POST COnPAIRS"
	names = params[:names]
	puts "names = #{names}"
	pair = params[:pair]

	pair = pair(names)
	
	
erb :confirmed_pairs, :locals => {pair: pair, names: names}		
end