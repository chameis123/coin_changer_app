require "sinatra"
require_relative "coin_changer.rb"

get "/" do
	feedback = ""
	if params[:wrong_input] == "true"
		feedback = "enter change"
	end

	erb :input, :locals => {:feedback => feedback}
end

post "/change" do
	amount = params[:amount]
	if amount.to_i > 99 || amount.to_i < 0
		redirect "/?wrong_input=true"
	else
		redirect "/change?amount=" + amount
	end
end

get "/change" do
	amount = params[:amount]
	minimal_coin_change = minimize_coin_change(amount.to_i)
	erb :output_minimal_change, :locals => {:amount => amount, :minimal_coin_change => minimal_coin_change}
end