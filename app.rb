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
	puts "pair = #{pair}"
	
erb :pairs, :locals => {pair: pair, names: names}
end
post'/pairs'do
	puts "MADE IT TO GET PAIRS"
	names = params[:names]
	puts "names = #{names}"
	pair = params[:pair]

	pair = pair(names)
	puts "pair = #{pair}"
	
erb :pairs, :locals => {pair: pair, names: names}
end
# post'/pairs'do
# 	names = params[:names]
# 	pair = params[:pair]
# 	pair = pair(names)
	
# erb :pairs, :locals => {pair: pair, names: names}
# end


