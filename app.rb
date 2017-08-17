require 'sinatra'
require_relative 'random_pairing.rb'

get "/" do
	erb :index
end

post '/pairs' do
	puts "MADE IT TO POST pairs"


	
	names = params[:names]
	
erb :pairs, :locals=>{:names=> names}
end

