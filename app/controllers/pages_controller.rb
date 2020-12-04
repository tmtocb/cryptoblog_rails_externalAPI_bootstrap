class PagesController < ApplicationController
  def home
  	require 'net/http'
  	require 'json'

  	@url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@news = JSON.parse(@response)
  	
  end

  def about
  end

  def prices
  end
end
