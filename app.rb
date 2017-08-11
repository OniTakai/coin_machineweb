require "sinatra"
require_relative "coin_machine.rb"

get '/' do
erb :index
end
get '/about_us' do
	erb :about_us 
end
get '/history_money' do
	erb :history_money
end
get'/money_pics' do
	erb :money_pics
end
get '/making_money' do
	erb :making_money
end





get '/index' do
	erb :index
end
post '/index' do
	
	amount = params[:amount]

	puts "amount is #{amount}"
	
	coins = params[:coins]
	coins = coin_machine(amount)
	redirect '/contact?amount='+ amount + '&coins=' + coins 
end
get '/contact' do
	amount = params[:amount]
	puts "amount is #{amount}"
	coins = params[:coins]
	returned = params[:returned]
	erb :contact, :locals=>{:amount => amount, :coins=> coins}
end

post '/contact' do
	amount = params[:amount]
	coins = params[:coins]
 	puts "amount is #{amount}"
 	puts "coins are #{coins}"
end