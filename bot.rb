require 'twitter'
require_relative 'twitter_keys.rb'
require 'pry'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = CONSUMER_KEY
  config.consumer_secret     = CONSUMER_SECRET
  config.access_token        = ACCESS_TOKEN
  config.access_token_secret = ACCESS_TOKEN_SECRET
end

tweets = client.search("pahlka", result_type: "recent").take(10)

tweets.each do |tweet|
  puts tweet.text
end