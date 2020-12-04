class PagesController < ApplicationController
  def home

  	require 'net/http'
  	require 'json'

  	#Gets news API data
  	@url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@news = JSON.parse(@response)

  	#Gets prices API data
   	@prices_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,XRP,USDT,LTC,LINK,BCH,ADA,DOT,BNB&tsyms=USD'
  	@prices_uri = URI(@prices_url)
  	@prices_response = Net::HTTP.get(@prices_uri)
  	@prices = JSON.parse(@prices_response)

  end

  def about
  end

  def prices
  end
end
